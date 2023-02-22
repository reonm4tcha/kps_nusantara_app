import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/Ikrar_Pelatih.dart';
import 'package:ksp_nusantara_app/data/Sambutan.dart';
import 'package:ksp_nusantara_app/data/Sejarah_Singkat.dart';
import 'package:ksp_nusantara_app/data/Moto_Pelatih.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color(0xff362FD9),
      ),
      body: ListView(
        children: [
          //geser gambar
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height /3.5,
            child:
            Center(
              child: Text('slide!'),
            ),
            color: Colors.grey,
          ),

          //Sambutan
          Container(
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
