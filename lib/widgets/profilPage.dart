import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/data_Profil.dart';

Widget profilPage(){
  return ListView(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 40),
        child: Image.asset(
          'assets/image/Perguruan.png',
          height: 113,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        width: double.infinity,
        child:
        Text(
          data_Profil.opening_Profil,
          textAlign: TextAlign.justify,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        width: double.infinity,
        child: Text(
          data_Profil.head_Struktur,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          width: double.infinity,
          child:
          Image.asset(
            data_Profil.gambar_Struktur,
          )
      ),
      SizedBox(
        height: 25,
      ),
      Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        width: double.infinity,
        child: Center(
          child: ListTile(
            leading:
            Image.asset(
              data_Profil.icon_Secretariat,
              height: 30, width: 30,
            ),
            title: Text('Sekertariat\t:'),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        width: double.infinity,
        child: Center(
          child: ListTile(
            leading:
            Image.asset(
              data_Profil.icon_Kontak,
              height: 30, width: 30,
            ),
            title: Text('Kontak\t:'),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        width: double.infinity,
        child: Center(
          child: ListTile(
            leading:
            Image.asset(
              data_Profil.icon_Instagram,
              height: 30, width: 30,
            ),
            title: Text('Instagram\t:'),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        width: double.infinity,
        child: Center(
          child: ListTile(
            leading:
            Image.asset(
              data_Profil.icon_Email,
              height: 35, width: 35,
            ),
            title: Text('Email\t:'),
          ),
        ),
      ),

    ],
  );
}
