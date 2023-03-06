import 'package:ksp_nusantara_app/models/Lainnya_req.dart';
import 'package:ksp_nusantara_app/widgets/DokumentasiPage.dart';
import 'package:ksp_nusantara_app/widgets/TentangPage.dart';
import 'package:ksp_nusantara_app/widgets/profilPage.dart';
import 'package:ksp_nusantara_app/widgets/AD DAN ART Page.dart';
import 'package:ksp_nusantara_app/widgets/RantingPage.dart';
import 'package:ksp_nusantara_app/widgets/ArsipPage.dart';

List<Lainnya_req> Lainnya_data = [
  Lainnya_req(name: 'Profil', isi1: profilPage(), image: 'assets/image/1 profile.png'),
  Lainnya_req(name: 'AD DAN ART', isi1: AD_dan_ART_Page(), image: 'assets/image/2 AD dan ART.png'),
  Lainnya_req(name: 'Ranting', isi1: RantingPage(), image: 'assets/image/3 Ranting.png'),
  Lainnya_req(name: 'Dokumentasi', isi1: DokumentasiPage(), image: 'assets/image/4 Dokumentrasi.png'),
  Lainnya_req(name: 'Arsip', isi1: ArsipPage(), image: 'assets/image/5 Arsip.png'),
  Lainnya_req(name: 'Tentang', isi1: TentangPage(), image: 'assets/image/6 About.png'),
];

String version = 'Version 1.0';