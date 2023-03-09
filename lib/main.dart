import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/screen/Beranda.dart';
import 'package:ksp_nusantara_app/screen/materi_screen.dart';
import 'package:ksp_nusantara_app/screen/Panduan.dart';
import 'package:ksp_nusantara_app/screen/Lainnya.dart';

void main() {
  runApp(const KesatriaPSNusantara());
}

class KesatriaPSNusantara extends StatelessWidget {
  const KesatriaPSNusantara({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kesatria PS Nusantara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: const Color(0xff0597F2),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            color: Color(0xff0597F2),
            elevation: 0,
          )),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pages = [
    const Beranda(),
    const MateriScreen(),
    const Panduan(),
    const Lainnya(),
  ];

  int selectPage = 0;

  void onTapNavBar(int index) {
    setState(() {
      selectPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectPage),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'Beranda',
              icon: Icon(Icons.home),
              backgroundColor: Color(0xff0597F2)),
          BottomNavigationBarItem(
              label: 'Materi',
              icon: Icon(Icons.menu_book),
              backgroundColor: Color(0xff0597F2)),
          BottomNavigationBarItem(
              label: 'Panduan',
              icon: Icon(Icons.library_books),
              backgroundColor: Color(0xff0597F2)),
          BottomNavigationBarItem(
              label: 'Lainnya',
              icon: Icon(
                Icons.menu,
              ),
              backgroundColor: Color(0xff0597F2)),
        ],
        currentIndex: selectPage,
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.black54,
        onTap: onTapNavBar,
      ),
    );
  }
}
