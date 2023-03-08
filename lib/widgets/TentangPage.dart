import 'package:flutter/material.dart';

Widget TentangPage(){
  return ListView(padding: EdgeInsets.all(10),
    children: [
      // Center(
      //   child: Text('Tentang Page'),
      // ),
      RichText(text: TextSpan( children: [
          TextSpan(text: 'Aplikasi ini merupakan projek kerja sama antara perguruan ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black)),
          TextSpan(text: 'Kesatria Pewaris Silat Nusantara ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
          TextSpan(text: 'dengan ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black)),
          TextSpan(text: 'Advanced Computer System Laboratory', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
          TextSpan(text: ' Univeritas Gunadarma. Aplikasi ini dibuat dengan maksud untuk memperkenalkan pencak silat baik dari sejarah, materi, panduan, dan profil perguruan Kesatria Pewaris Silat Nusantara.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black)),
        ],),textAlign: TextAlign.justify,),
      Text('\nKebijakan Privasi', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
      Text('Kami tidak akan memperjualbelikan, memperlihatkan, atau menyerahkan informasi kepada khalayak umum tanpa izin dan persetujuan pihak perguruan. Semua materi yang berada di aplikasi ini merupakan Hak Cipta dari perguruan Kesatria Pewaris Silat Nusantara. Bagi pengguna yang menyalahgunakan informasi yang terdapat pada aplikasi ini dapat dituntut oleh hukum dan Undang-Undang yang berlaku. Diharapkan pengguna aplikasi membaca panduan dan AD/ART terlebih dahulu, karena pihak perguruan memiliki kebijakan dan hukum tersendiri.', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal),textAlign: TextAlign.justify),
    ],
  );
}