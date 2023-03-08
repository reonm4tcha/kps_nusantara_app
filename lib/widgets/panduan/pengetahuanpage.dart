import 'package:flutter/material.dart';
import '../../models/panduanmodels/pengetahuanpanduan.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PengetahuanPage extends StatefulWidget {
  final List<PengetahuanModel> panduanData;
  int index;
  PengetahuanPage({super.key, required this.index, required this.panduanData});

  @override
  State<PengetahuanPage> createState() => _PengetahuanPageState();
}

class _PengetahuanPageState extends State<PengetahuanPage> {
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
        backgroundColor: Color(0xff362FD9),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
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
        margin: const EdgeInsets.only(left: 30),
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
                    // widget.index = widget.panduanData.length - 1;
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
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
                    // widget.index = 0;
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          title: Text("Tidak ada Halaman"),
                        );
                      },
                    );
                  }
                });
              },
              child: const Icon(Icons.keyboard_double_arrow_right_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
