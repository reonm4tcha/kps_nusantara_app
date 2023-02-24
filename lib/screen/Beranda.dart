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
        title: const Text(''),
      ),
      body: ListView(
        children: [
          //geser gambar
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3.5,
            color: Colors.grey,
            child: const Center(
              child: Text('slide!'),
            ),
          ),

          //Sambutan
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.black),
            margin: const EdgeInsets.only(top: 50),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                child: Text(
                  Sambutan.head_Sambutan,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Image.asset(
              Sambutan.fileGambarSambutan,
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width / 2.5,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              Sambutan.isi_Sambutan1,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              Sambutan.isi_Sambutan2,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              Sambutan.isi_Sambutan3,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
            child: Text(
              Sambutan.isi_Sambutan4,
              textAlign: TextAlign.justify,
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.black,
          ),

          //Ikrar Pelatih
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                  child: Text(
                Ikrar_Pelatih.head_IkrarPelatih,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              Ikrar_Pelatih.no1_IkrarPelatih,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              Ikrar_Pelatih.no2_IkrarPelatih,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              Ikrar_Pelatih.no3_IkrarPelatih,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              Ikrar_Pelatih.no4_IkrarPelatih,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
            child: Text(
              Ikrar_Pelatih.no5_IkrarPelatih,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.black,
          ),

          //Moto pelatih
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                  child: Text(
                Moto_Pelatih.head,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            child: Center(
              child: Text(
                Moto_Pelatih.isi,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.black,
          ),

          //Sejarah Singkat
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Center(
                  child: Column(
                children: [
                  Text(
                    Sejarah_Singkat.headSejarah,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    Sejarah_Singkat.headNomor,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              )),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: const Text(
                'Perguruan ini didirikan Pada Tanggal 28 Juli 1968 di Jakarta oleh Tiga orang pendiri yaitu :'),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Sejarah_Singkat.Pendiri),
                Image.asset(
                  Sejarah_Singkat.Pendiri_Images,
                  height: 90,
                  width: 120,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              Sejarah_Singkat.Dahulu,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  Sejarah_Singkat.Sebelumnya1,
                  height: 90,
                  width: 90,
                ),
                Image.asset(
                  Sejarah_Singkat.Sebelumnya2,
                  height: 90,
                  width: 90,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              Sejarah_Singkat.maka_dari_itu,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      Sejarah_Singkat.KPN_image,
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      Sejarah_Singkat.pelatih_utama_image,
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'PELATIH UTAMA KPSN',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff002060)),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              Sejarah_Singkat.p1_seiring_waktu,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              Sejarah_Singkat.p2_seiring_waktu,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/image/Perguruan.png',
                          height: 100,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      Sejarah_Singkat.pelatih_utama2_image,
                      height: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'PELATIH UTAMA\nKESATRIA PSN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff362FD9)),
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.black,
          ),
          Container(
            height: 20,
          )
        ],
      ),
    );
  }
}
