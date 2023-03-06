import 'package:flutter/material.dart';
import '../../models/panduanmodels/maknapanduan.dart';
import '../../data/datapanduan.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MaknaPage extends StatefulWidget {
  final List<MaknaModel> panduanData;
  int index;
  MaknaPage({super.key, required this.index, required this.panduanData});

  @override
  State<MaknaPage> createState() => _MaknaPageState();
}

class _MaknaPageState extends State<MaknaPage> {
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.panduanData[widget.index].judul),
        backgroundColor: Color.fromARGB(255, 0, 171, 233),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 15, left: 10, right: 10),
            child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.33,
                width: MediaQuery.of(context).size.width,
                child: SfPdfViewer.asset(
                  widget.panduanData[widget.index].pdfURL,
                  canShowScrollStatus: false,
                  canShowScrollHead: false,
                  controller: _pdfViewerController,
                )),
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
                _pdfViewerController.firstPage();
              },
              child: Icon(Icons.keyboard_arrow_up),
            ),
            FloatingActionButton(
              heroTag: 'b3',
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
