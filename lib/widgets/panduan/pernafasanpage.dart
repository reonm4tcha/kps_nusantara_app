import 'package:flutter/material.dart';
import '../../models/panduanmodels/pernafasanpanduan.dart';
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
  late PdfViewerController _pdfViewerController;
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.panduanData[widget.index].judul),
        backgroundColor: Color(0xff362FD9),
        // backgroundColor: Color.fromARGB(255, 0, 171, 233),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
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
              child: Icon(Icons.keyboard_double_arrow_left_outlined),
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    heroTag: 'b2',
                    onPressed: () {
                      _pdfViewerController.firstPage();
                    },
                    child: Icon(Icons.first_page_outlined),
                  ),
                  FloatingActionButton(
                    heroTag: 'b3',
                    onPressed: () {
                      _pdfViewerController.previousPage();
                    },
                    child: Icon(Icons.navigate_before),
                  ),
                  FloatingActionButton(
                    heroTag: 'b4',
                    onPressed: () {
                      _pdfViewerController.nextPage();
                    },
                    child: Icon(Icons.navigate_next),
                  ),
                  FloatingActionButton(
                    heroTag: 'b5',
                    onPressed: () {
                      _pdfViewerController.lastPage();
                    },
                    child: Icon(Icons.last_page_outlined),
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              heroTag: 'b6',
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
              child: Icon(Icons.keyboard_double_arrow_right_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
