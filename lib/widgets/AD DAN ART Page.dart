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
        Column(
          children: [
            Text(
              data_AD_DAN_ART.no_1BABI,
              style:
              TextStyle(
                  fontSize: 16
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_passal1BABI,
              style:
              TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          ]
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
        margin: EdgeInsets.only(top: 20),
        child:
        Column(
          children: [
            Text(
              data_AD_DAN_ART.no_2BABI,
              style:
              TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_passal2BABI,
              style:
              TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        )
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_passal2BABI
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child:
        Column(
          children: [
            Text(
              data_AD_DAN_ART.no_3BABI,
              style:
              TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_passal3BABI,
              style:
              TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_passal3BABI,
          textAlign: TextAlign.justify,
        ),
      ),

      //BAB II
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child:
        Column(
            children: [
              Text(
                data_AD_DAN_ART.BAB_II,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
              Text(
                data_AD_DAN_ART.jenis_PasalBABII,
                textAlign: TextAlign.center,
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
        Column(
            children: [
              Text(
                data_AD_DAN_ART.no_4BABII,
                style:
                TextStyle(
                    fontSize: 16
                ),
              ),
              Text(
                data_AD_DAN_ART.nama_pasal4BABII,
                style:
                TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),
              ),
            ]
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child:
        Text(
          data_AD_DAN_ART.isi_pasal4BABII,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              data_AD_DAN_ART.no_5BABII,
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_pasal5BABII,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal5BABII_a,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal5BABII_b,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal5BABII_c,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child:
        Column(
          children: [
            Text(
              data_AD_DAN_ART.no_6BABII,
              style: TextStyle(
                fontSize: 16
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_pasal6BABII,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal6BABII_1,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal6BABII_2,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              data_AD_DAN_ART.no_7BABII,
              style: TextStyle(
                fontSize: 16
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_pasal7BABII,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal7BABII,
          textAlign: TextAlign.justify,
        ),
      ),

      //BAB III
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Text(
              data_AD_DAN_ART.BAB_III,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
            ),
            Text(
              data_AD_DAN_ART.jenis_PasalBABIII,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              data_AD_DAN_ART.no_8BABIII,
              style: TextStyle(
                fontSize: 16
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_pasal8BABIII,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal8BABIII_1,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal8BABIII_2,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal8BABIII_3,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal8BABIII_4,
          textAlign: TextAlign.justify,
        ),
      ),

      //BAB IV
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Center(
          child: Text(
            data_AD_DAN_ART.BAB_IV,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 10, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data_AD_DAN_ART.Bag_1_BABIV,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
            ),
            Text(
              data_AD_DAN_ART.jenisBag_1_BABIV,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              data_AD_DAN_ART.no_9BABIV,
              style: TextStyle(
                fontSize: 16
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_pasal9BABIV,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20,),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV,
          textAlign: TextAlign.justify,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_1,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_2,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_3,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_4,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_5,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_6,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_7,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_8,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal9BABIV_9,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              data_AD_DAN_ART.no_10BABIV,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              data_AD_DAN_ART.nama_pasal10BABIV,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal10BABIV
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
          data_AD_DAN_ART.isi_pasal10BABIV_1
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
            data_AD_DAN_ART.isi_pasal10BABIV_2
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
            data_AD_DAN_ART.isi_pasal10BABIV_3
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Text(
            data_AD_DAN_ART.isi_pasal10BABIV_4
        ),
      ),
    ],
  );
}