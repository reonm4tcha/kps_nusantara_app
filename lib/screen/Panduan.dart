import 'package:flutter/material.dart';
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
                            // Container(alignment: Alignment.center,
                            //   width: MediaQuery.of(context).size.width/1.65,
                            //   padding: EdgeInsets.all(5),
                            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(width: 1, color: Colors.white), color: Colors.white,),
                            //   child: Text(
                            //     'Panduan dasar yang wajib dipahami',
                            //   style: TextStyle(
                            //     color: Colors.black, 
                            //     fontSize: 13, 
                            //     fontWeight: FontWeight.w500,
                            //     ),
                            //   ),
                            // ),
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
                                  buildpengetahuan(context),
                                  buildMaknaKiasan(context),
                                  buildPernafasan(context),
                                  buildPedoman(context),
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

  Widget buildpengetahuan(BuildContext context) => ExpansionTile(
        title: const Text(
          'PENGETAHUAN PENCAK SILAT',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        children: [
          SizedBox(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: panduanModel.pengetahuan.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PengetahuanPage(
                                    index: index,
                                    panduanData: panduanModel.pengetahuan),
                              ));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          margin: const EdgeInsets.only(
                              top: 4, left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.grey[300]!),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              padding: const EdgeInsets.all(5),
                              child: Row(children: [
                                const Icon(
                                  Icons.arrow_circle_right,
                                  size: 18.0,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      panduanModel.pengetahuan[index].judul,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 13),
                                    )),
                              ])),
                        ));
                  })),
        ],
      );

  Widget buildMaknaKiasan(BuildContext context) => ExpansionTile(
        title: const Text(
          'MAKNA DAN KIASAN',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        children: [
          SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: panduanModel.makna.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MaknaPage(
                                    index: index,
                                    panduanData: panduanModel.makna),
                              ));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          margin: const EdgeInsets.only(
                              top: 4, left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.grey[300]!),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              padding: const EdgeInsets.all(5),
                              child: Row(children: [
                                const Icon(
                                  Icons.arrow_circle_right,
                                  size: 18.0,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      panduanModel.makna[index].judul,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 13),
                                    )),
                              ])),
                        ));
                  })),
        ],
      );

  Widget buildPernafasan(BuildContext context) => ExpansionTile(
        title: const Text(
          'PANDUAN PERNAFASAN',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: panduanModel.pernafasan.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PernafasanPage(
                                    index: index,
                                    panduanData: panduanModel.pernafasan),
                              ));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          margin: const EdgeInsets.only(
                              top: 4, left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.grey[300]!),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              padding: const EdgeInsets.all(5),
                              child: Row(children: [
                                const Icon(
                                  Icons.arrow_circle_right,
                                  size: 18.0,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      panduanModel.pernafasan[index].judul,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 13),
                                    )),
                              ])),
                        ));
                  })),
        ],
      );

  Widget buildPedoman(BuildContext context) => ExpansionTile(
        title: const Text(
          'PEDOMAN TEKNIK',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        children: [
          SizedBox(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: panduanModel.pedoman.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PedomanPage(
                                    index: index,
                                    panduanData: panduanModel.pedoman),
                              ));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          margin: const EdgeInsets.only(
                              top: 4, left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.grey[300]!),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              padding: const EdgeInsets.all(5),
                              child: Row(children: [
                                const Icon(
                                  Icons.arrow_circle_right,
                                  size: 18.0,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      panduanModel.pedoman[index].judul,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 13),
                                    )),
                              ])),
                        ));
                  })),
        ],
      );
}
