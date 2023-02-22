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
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan1,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan2,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan3,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan4,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan5,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan6,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_Pembukaan7,
          textAlign: TextAlign.justify,
        ),
      ),

      //BAB 1
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child:
        Column(
          children: [
            Text(
              data_AD_DAN_ART.BAB_I,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),
            ),
            Text(
              data_AD_DAN_ART.jenis_pasalBABI,
              style:
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
            )
          ]
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child:
        Center(
          child: Text(
            data_AD_DAN_ART.no_1BABI,
            style:
            TextStyle(
              fontSize: 16
            ),
          ),
        ),
      ),
      Container(
        width: double.infinity,
        child:
        Center(
          child: Text(
            data_AD_DAN_ART.nama_passal1BABI,
            style:
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_passal1BABI,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child:
        Center(
          child: Text(
'            // data_AD_DAN_ART.'
          ),
        ),
      ),
    ],
  );
}