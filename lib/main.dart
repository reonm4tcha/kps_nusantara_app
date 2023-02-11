import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/screen/Beranda.dart';
import 'package:ksp_nusantara_app/screen/materi_screen.dart';
import 'package:ksp_nusantara_app/screen/Panduan.dart';
import 'package:ksp_nusantara_app/screen/Lainnya.dart';
import 'package:ksp_nusantara_app/screen/Pelantikan.dart';

void main() {
  runApp(Kesatria_PS_Nusantara());
}

class Kesatria_PS_Nusantara extends StatelessWidget {
  const Kesatria_PS_Nusantara({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kesatria PS Nusantara',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final Pages = [
    Beranda(),
    MateriScreen(),
    Panduan(),
    Lainnya(),
    Pelantikan()
  ];

  int selectPage = 0;

  void onTapNavBar(int index){
    setState(() {
      selectPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages.elementAt(selectPage),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              label: 'Beranda',
              icon: Icon(Icons.home),
              backgroundColor: Color(0xff362FD9)
          ),

          BottomNavigationBarItem(
              label: 'Materi',
              icon: Icon(Icons.menu_book),
              backgroundColor: Color(0xff362FD9)
          ),

          BottomNavigationBarItem(
              label: 'Panduan',
              icon: Icon(Icons.library_books),
              backgroundColor: Color(0xff362FD9)
          ),

          BottomNavigationBarItem(
              label: 'Lainnya',
              icon: Icon(Icons.menu,),
              backgroundColor: Color(0xff362FD9)
          ),

          BottomNavigationBarItem(
              label: 'Pelantikan',
              icon: Icon(Icons.menu_open,),
              backgroundColor: Color(0xff362FD9)
          ),

        ],
        currentIndex: selectPage,
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.black,
        onTap: onTapNavBar,
      ),
      backgroundColor: Color(0xff5B8FB9),
    );
  }
}