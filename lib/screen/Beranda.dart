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
            decoration: BoxDecoration(
              color: Colors.black
            ),
            margin: EdgeInsets.only(top: 50),
            child:
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                child:
                Text(
                  Sambutan.head_Sambutan,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child:
            Image.asset(
              Sambutan.fileGambarSambutan,
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width / 2.5,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child:
            Text(
              Sambutan.isi_Sambutan1,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child:
            Text(
              Sambutan.isi_Sambutan2,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child:
            Text(
              Sambutan.isi_Sambutan3,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
            child:
            Text(
              Sambutan.isi_Sambutan4,
              textAlign: TextAlign.justify,
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),

          //Ikrar Pelatih
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              color: Colors.black
            ),
            child:
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                child:
                  Text(
                    Ikrar_Pelatih.head_IkrarPelatih,
                    style:
                    TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  )
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child:
            Text(
              Ikrar_Pelatih.no1_IkrarPelatih,
              style:
              TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child:
            Text(
              Ikrar_Pelatih.no2_IkrarPelatih,
              style:
              TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child:
            Text(
              Ikrar_Pelatih.no3_IkrarPelatih,
              style:
              TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child:
            Text(
              Ikrar_Pelatih.no4_IkrarPelatih,
              style:
              TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
            child:
            Text(
              Ikrar_Pelatih.no5_IkrarPelatih,
              style:
              TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),

          //Moto pelatih
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Colors.black
            ),
            child:
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                  child:
                  Text(
                    Moto_Pelatih.head,
                    style:
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  )
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            child:
            Center(
              child:
              Text(
                Moto_Pelatih.isi,
                textAlign: TextAlign.center,
                style:
                TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
          ),

          //Sejarah Singkat
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Colors.black
            ),
            child:
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                  child:
                  Column(
                    children: [
                      Text(
                        Sejarah_Singkat.headSejarah,
                        style:
                        TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                      Text(
                        Sejarah_Singkat.headNomor,
                        style:
                        TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                      )
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}