import 'package:flutter/material.dart';
import '../models/makna.dart';
import '../data/datapanduan.dart';

class MaknaPage extends StatelessWidget {
  final MaknaModel panduanData;
  const MaknaPage({super.key, required this.panduanData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(panduanData.title),
        backgroundColor: Color.fromARGB(255, 0, 171, 233),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            Text(
              panduanData.judul,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              panduanData.isi,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
