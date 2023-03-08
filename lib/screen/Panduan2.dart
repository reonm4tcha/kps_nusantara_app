import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/models/panduanmodels/maknapanduan.dart';
import 'package:ksp_nusantara_app/models/panduanmodels/pedomanpanduan.dart';
import 'package:ksp_nusantara_app/models/panduanmodels/pengetahuanpanduan.dart';
import 'package:ksp_nusantara_app/models/panduanmodels/pernafasanpanduan.dart';
import '../widgets/panduan/maknapage.dart';
import '../widgets/panduan/pedomanpage.dart';
import '../widgets/panduan/pengetahuanpage.dart';
import '../widgets/panduan/pernafasanpage.dart';
import '../data/datapanduan.dart';

class Panduan extends StatefulWidget {
  const Panduan({Key? key}) : super(key: key);

  @override
  State<Panduan> createState() => _PanduanState();
}

class _PanduanState extends State<Panduan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PANDUAN'),
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                    0.0,
                    0.7,
                  ],
                      colors: [
                    Color(0xff362FD9),
                    Colors.white,
                  ])),
                child: Column(
                  children: [
                    FittedBox(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width/1.6,
                              child: Text(
                                  'Panduan dasar yang wajib dipahami',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 243, 243, 243), 
                                  fontSize: 13, 
                                  fontWeight: FontWeight.w500,
                                  ),
                                ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/image/Yayasan.png',
                                  height: MediaQuery.of(context).size.height / 20,
                                  width: MediaQuery.of(context).size.height / 20,
                                ),
                                Image.asset(
                                  'assets/image/Perguruan.png',
                                  height: MediaQuery.of(context).size.height / 22,
                                  width: MediaQuery.of(context).size.height / 22,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                     Expanded(
                       child: Container(
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height / 1.36, //1.37
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Flexible(
                                    child: ListView.builder(
                                      itemCount: panduanModel.title.length,
                                      physics: const ScrollPhysics(),
                                      itemBuilder: (BuildContext context, int index) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8)),
                                            child: Theme(
                                              data: Theme.of(context).copyWith(
                                                dividerColor: Colors.transparent,
                                              ),
                                              child: ExpansionTile(
                                                textColor: const Color(0xff362FD9),
                                                iconColor: const Color(0xff362FD9),
                                                tilePadding: const EdgeInsets.all(8),
                                                title: Text(
                                                  panduanModel.title[index],
                                                ),
                                                children: [
                                                  buildpengetahuan(context, panduanModel.pengetahuan[index], index),
                                                  buildMaknaKiasan(context, panduanModel.makna[index], index),
                                                  buildPernafasan(context, panduanModel.pernafasan[index], index),
                                                  buildPedoman(context, panduanModel.pedoman[index], index),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ),
                     ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }

  buildpengetahuan(BuildContext context, PengetahuanModel pengetahuan, int index) {
    return Column(
        children: List.generate(panduanModel.pengetahuan.length,
      (index) => GestureDetector(
        onTap: () {
          Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PengetahuanPage(
                                      index: index,
                                      panduanData: panduanModel.pengetahuan),
                                ));
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(panduanModel.pengetahuan[index].judul),
        ),
      ),
    ));
  }

  buildMaknaKiasan(BuildContext context, MaknaModel makna, int index) {
    return Column(
        children: List.generate(panduanModel.makna.length,
      (index) => GestureDetector(
        onTap: () {
         Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MaknaPage(
                                    index: index,
                                    panduanData: panduanModel.makna),
                              ));
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(panduanModel.makna[index].judul),
        ),
      ),
    ));
  }

  buildPernafasan(BuildContext context, PernafasanModel pernafasan, int index) {
    return Column(
        children: List.generate(panduanModel.pernafasan.length,
      (index) => GestureDetector(
        onTap: () {
         Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PernafasanPage(
                                    index: index,
                                    panduanData: panduanModel.pernafasan),
                              ));
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(panduanModel.pernafasan[index].judul),
        ),
      ),
    ));
  }

  buildPedoman(BuildContext context, PedomanModel pedoman, int index) {
    return Column(
        children: List.generate(panduanModel.pedoman.length,
      (index) => GestureDetector(
        onTap: () {
          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PedomanPage(
                                    index: index,
                                    panduanData: panduanModel.pedoman),
                              ));
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(panduanModel.pedoman[index].judul),
        ),
      ),
    ));
  }
}
