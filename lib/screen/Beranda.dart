import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/data/Sambutan.dart';
import 'package:ksp_nusantara_app/data/Sejarah_Singkat.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              color: Color(0xff362FD9),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/image/Yayasan.png',
                height: 100,
                width: 100,
              ),
              Image.asset(
                'assets/image/Perguruan.png',
                height: 90,
                width: 90,
              )
            ],
          ),
        ),

        SizedBox(
          height: 30,
        ),

        Container(
            width: double.infinity,
            height: 3,
            decoration: BoxDecoration(
                color: Color(0xff362FD9),
            )
        ),

        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff5B8FB9),
            ),
            child:
            ListView(
              children: [

                Container(
                  margin: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 20),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  child:
                  Center(child: Text('Gambar Berjalan')),
                ),

                //Sambutan
                Container(
                  margin: EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 20),
                  width: double.infinity,
                  height: 900,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      //head Sambutan
                      Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        width: double.infinity,
                        height: 80,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Text(
                              Sambutan.head_Sambutan1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              Sambutan.head_Sambutan2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Gambar Sambutan
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 20),
                        child:
                        Image.asset(
                          Sambutan.fileGambarSambutan,
                          height: 300,
                          width: 300,
                        ),
                      ),
                      //isi Paragraf 1
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child:
                        Text(
                          Sambutan.isi_Sambutan1,
                          textAlign: TextAlign.justify
                        ),
                      ),
                      //isi Paragraf 2
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child:
                        Text(
                          Sambutan.isi_Sambutan2,
                          textAlign: TextAlign.justify
                        ),
                      ),
                      //isi Paragraf 3
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child:
                        Text(
                          Sambutan.isi_Sambutan3,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      //isi paragraf 4
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child:
                        Text(
                          Sambutan.isi_Sambutan4,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),

                //Sejarah Singkat
                Container(
                  margin: EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 20),
                  width: double.infinity,
                  height: 900,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child:
                  Column(
                    children: [
                      //head
                      Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        width: double.infinity,
                        height: 80,
                        color: Colors.black,
                        child:
                        Column(
                          children: [
                            Text(
                              Sejarah_Singkat.headSejarah,
                              style:
                              TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                Sejarah_Singkat.headNomor,
                                style:
                                TextStyle(
                                    fontSize: 16,
                                    color: Colors.white)
                            ),
                          ],
                        ),
                      ),
                      //Pendiri
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 10, right: 10,),
                        child:
                        Text('Perguruan ini didirikan Pada Tanggal 28 Juli 1968 di Jakarta oleh Tiga orang pendiri yaitu :'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Sejarah_Singkat.Pendiri),
                            Image.asset(
                              Sejarah_Singkat.Pendiri_Images,
                              height: 70,
                              width: 100,
                            )
                          ],
                        ),
                      ),
                      //Sebelumnya
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20,),
                        child:
                        Column(
                          children: [
                            Text(
                              Sejarah_Singkat.Dahulu,
                              textAlign: TextAlign.justify,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  Sejarah_Singkat.Sebelumnya1,
                                  height: 70,
                                  width: 70,
                                ),
                                Image.asset(
                                  Sejarah_Singkat.Sebelumnya2,
                                  height: 70,
                                  width: 70,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      //Maka dari itu
                      Container()
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ],
    );
  }
}