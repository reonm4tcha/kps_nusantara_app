import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/screen/Beranda.dart';
import 'package:ksp_nusantara_app/screen/materi_screen.dart';

void main() {
  runApp(const Kesatria_PS_Nusantara());
}

class Kesatria_PS_Nusantara extends StatelessWidget {
  const Kesatria_PS_Nusantara({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kesatria PS Nusantara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xff362FD9),
          appBarTheme: const AppBarTheme(
            color: Color(0xff362FD9),
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
    // Panduan(),
    // Lainnya(),
    // Pelantikan()
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
              backgroundColor: Color(0xff362FD9)),
          BottomNavigationBarItem(
              label: 'Materi',
              icon: Icon(Icons.menu_book),
              backgroundColor: Color(0xff362FD9)),
          BottomNavigationBarItem(
              label: 'Panduan',
              icon: Icon(Icons.library_books),
              backgroundColor: Color(0xff362FD9)),
          BottomNavigationBarItem(
              label: 'Lainnya',
              icon: Icon(
                Icons.menu,
              ),
              backgroundColor: Color(0xff362FD9)),
          BottomNavigationBarItem(
              label: 'Pelantikan',
              icon: Icon(
                Icons.menu_open,
              ),
              backgroundColor: Color(0xff362FD9)),
        ],
        currentIndex: selectPage,
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.black,
        onTap: onTapNavBar,
      ),
      backgroundColor: const Color(0xff5B8FB9),
    );
  }
}
