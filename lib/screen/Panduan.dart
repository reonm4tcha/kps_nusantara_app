import 'package:flutter/material.dart';
import '../models/makna.dart';
import '../models/panduanmodel.dart';
import '../models/pedoman.dart';
import '../widgets/maknapage.dart';
import '../widgets/pedomanpage.dart';
import '../data/datapanduan.dart';

class Panduan extends StatefulWidget {
  const Panduan({Key? key}) : super(key: key);

  @override
  State<Panduan> createState() => _PanduanState();
}

class _PanduanState extends State<Panduan> {
  @override
  Widget build(BuildContext context) {
    _buildMakna(BuildContext context, MaknaModel isimakna) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MaknaPage(panduanData: isimakna),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 4, left: 30, right: 30),
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1, color: Colors.grey[300]!),
          ),
          child: Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_circle_right,
                  size: 18.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    isimakna.title,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } //_buildmakna close

    _buildPedoman(BuildContext context, PedomanModel isipedoman) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PedomanPage(panduanData: isipedoman),
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 4, left: 30, right: 30),
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1, color: Colors.grey[300]!),
          ),
          child: Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_circle_right,
                  size: 18.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    isipedoman.title,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } //_buildPedoman close

    return Scaffold(
      appBar: AppBar(
        title: Text('PANDUAN'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff362FD9), //Color(0xff5B8FB9)
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Card(
                elevation: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30, bottom: 10, left: 20, right: 20),
                      child: Text(
                        'Makna dan Kiasan',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(top: 5),
                        itemCount: panduanModel.makna.length,
                        itemBuilder: (context, index) {
                          MaknaModel isimakna = panduanModel.makna[index];
                          return _buildMakna(context, isimakna);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30, bottom: 10, left: 20, right: 20),
                      child: Text(
                        'Pedoman Teknik',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(top: 5),
                        itemCount: panduanModel.pedoman.length,
                        itemBuilder: (context, index) {
                          PedomanModel isipedoman = panduanModel.pedoman[index];
                          return _buildPedoman(context, isipedoman);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
