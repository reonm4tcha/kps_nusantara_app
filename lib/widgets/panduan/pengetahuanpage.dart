import 'package:flutter/material.dart';
import '../../models/pengetahuanpanduan.dart';
import '../../data/datapanduan.dart';

class PengetahuanPage extends StatefulWidget {
  final List<PengetahuanModel> panduanData;
  int index;
  PengetahuanPage({super.key, required this.index, required this.panduanData});

  @override
  State<PengetahuanPage> createState() => _PengetahuanPageState();
}

class _PengetahuanPageState extends State<PengetahuanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.panduanData[widget.index].title),
        backgroundColor: Color.fromARGB(255, 0, 171, 233),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                Image.asset(
                  'assets/image/Perguruan.png',
                  height: 90,
                  width: 90,
                ),
                Text(
                  widget.panduanData[widget.index].judul,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.panduanData[widget.index].isi,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  widget.panduanData[widget.index].subisi,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: 80,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'b1',
              onPressed: () {
                setState(() {
                  if (widget.index != 0) {
                    widget.index--;
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Tidak ada Halaman"),
                        );
                      },
                    );
                  }
                });
              },
              child: Icon(Icons.arrow_back_ios_outlined),
            ),
            FloatingActionButton(
              heroTag: 'b2',
              onPressed: () {
                setState(() {
                  if (widget.index != widget.panduanData.length - 1) {
                    widget.index++;
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Tidak ada Halaman"),
                        );
                      },
                    );
                  }
                });
              },
              child: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
