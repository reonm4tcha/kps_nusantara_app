import 'package:ksp_nusantara_app/models/Lainnya_req.dart';
import 'package:ksp_nusantara_app/widgets/DokumentasiPage.dart';
import 'package:ksp_nusantara_app/widgets/TentangPage.dart';
import 'package:ksp_nusantara_app/widgets/profilPage.dart';
import 'package:ksp_nusantara_app/widgets/AD DAN ART.dart';
import 'package:ksp_nusantara_app/widgets/RantingPage.dart';
import 'package:ksp_nusantara_app/widgets/ArsipPage.dart';

List<Lainnya_req> Lainnya_data = [
  Lainnya_req(name: 'Profil', isi1: profilPage()),
  Lainnya_req(name: 'AD DAN ART', isi1: AD_dan_ART_Page()),
  Lainnya_req(name: 'Ranting', isi1: RantingPage()),
  Lainnya_req(name: 'Dokumentasi', isi1: DokumentasiPage()),
  Lainnya_req(name: 'Arsip', isi1: ArsipPage()),
  Lainnya_req(name: 'Tentang', isi1: TentangPage()),
];

String version = 'Version 1.0';