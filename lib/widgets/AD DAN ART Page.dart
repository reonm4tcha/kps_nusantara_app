import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

Widget AD_dan_ART_Page(){
  const String pdf_AD_Dan_ART = 'assets/pdf/2. AD DAN ART_alpha.pdf';
  return SfPdfViewer.asset(pdf_AD_Dan_ART,  canShowScrollStatus: false,
                  canShowScrollHead: false,);
}