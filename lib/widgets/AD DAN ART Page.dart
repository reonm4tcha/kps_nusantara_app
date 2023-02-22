import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/Data Lainnya/data AD DAN ART.dart';

Widget AD_dan_ART_Page(){
  return ListView(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20,),
            child: Text(
              'ANGGARAN DASAR',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top : 30),
        child:
        Center(
          child: Text(
            data_AD_DAN_ART.head_Pembukaan,
            style:
            TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 20, left: 15, right: 15),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan1,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan2,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan3,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan4,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan5,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan6,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 15, right: 15),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan7,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 30),
        child:
        Center(
          child:
          Text(
            'data',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      )
    ],
  );
}