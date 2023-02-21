import 'package:flutter/material.dart';
import '../models/maknapanduan.dart';
import '../models/panduanmodel.dart';
import '../models/pedomanpanduan.dart';
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
        title: Text('PANDUAN'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff362FD9), //Color(0xff5B8FB9)
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 20, left: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(255, 253, 253, 0.911),
                      ),
                      child: Text(' Hal-hal dasar yang perlu diketahui!',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 13)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/image/Yayasan.png',
                          height: MediaQuery.of(context).size.width / 10,
                          width: MediaQuery.of(context).size.width / 10,
                        ),
                        Image.asset(
                          'assets/image/Perguruan.png',
                          height: MediaQuery.of(context).size.width / 11,
                          width: MediaQuery.of(context).size.width / 11,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.36, //1.37
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SafeArea(
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
    );
  }

  Widget buildpengetahuan(BuildContext context) => ExpansionTile(
        title: Text(
          'Pengetahuan Pencak Silat',
          style: TextStyle(
            fontSize: 18,
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
                          margin: EdgeInsets.only(top: 4, left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.grey[300]!),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              padding: EdgeInsets.all(5),
                              child: Row(children: [
                                Icon(
                                  Icons.arrow_circle_right,
                                  size: 18.0,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      panduanModel.pengetahuan[index].title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 13),
                                    )),
                              ])),
                        ));
                  })),
        ],
      );

  Widget buildMaknaKiasan(BuildContext context) => ExpansionTile(
        title: Text(
          'Makna dan Kiasan',
          style: TextStyle(
            fontSize: 18,
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
                          margin: EdgeInsets.only(top: 4, left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.grey[300]!),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              padding: EdgeInsets.all(5),
                              child: Row(children: [
                                Icon(
                                  Icons.arrow_circle_right,
                                  size: 18.0,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      panduanModel.makna[index].title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 13),
                                    )),
                              ])),
                        ));
                  })),
        ],
      );

  Widget buildPernafasan(BuildContext context) => ExpansionTile(
        title: Text(
          'Panduan Pernafasan',
          style: TextStyle(
            fontSize: 18,
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
                          margin: EdgeInsets.only(top: 4, left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.grey[300]!),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              padding: EdgeInsets.all(5),
                              child: Row(children: [
                                Icon(
                                  Icons.arrow_circle_right,
                                  size: 18.0,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      panduanModel.pernafasan[index].title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 13),
                                    )),
                              ])),
                        ));
                  })),
        ],
      );

  Widget buildPedoman(BuildContext context) => ExpansionTile(
        title: Text(
          'Pedoman Teknik',
          style: TextStyle(
            fontSize: 18,
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
                          margin: EdgeInsets.only(top: 4, left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.grey[300]!),
                          ),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              padding: EdgeInsets.all(5),
                              child: Row(children: [
                                Icon(
                                  Icons.arrow_circle_right,
                                  size: 18.0,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      panduanModel.pedoman[index].title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 13),
                                    )),
                              ])),
                        ));
                  })),
        ],
      );
}
