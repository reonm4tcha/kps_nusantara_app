import 'package:flutter/material.dart';
import '../../models/pernafasanpanduan.dart';
import '../../data/datapanduan.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/src/rendering/box.dart';

class PernafasanPage extends StatefulWidget {
  final List<PernafasanModel> panduanData;
  int index;
  PernafasanPage({super.key, required this.index, required this.panduanData});

  @override
  State<PernafasanPage> createState() => _PernafasanPageState();
}

class _PernafasanPageState extends State<PernafasanPage> {
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
                Text(
                  widget.panduanData[widget.index].judul,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   widget.panduanData[widget.index].isi,
                //   textAlign: TextAlign.justify,
                //   style: TextStyle(
                //     fontSize: 18,
                //     color: Colors.black,
                //   ),
                // ),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 1.31,
                    width: MediaQuery.of(context).size.width,
                    child: SfPdfViewer.asset(
                        widget.panduanData[widget.index].pdfURL))
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
