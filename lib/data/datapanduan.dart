import 'package:flutter/material.dart';
import '../models/panduanmodels/panduanmodel.dart';
import '../models/panduanmodels/maknapanduan.dart';
import '../models/panduanmodels/pedomanpanduan.dart';
import '../models/panduanmodels/pengetahuanpanduan.dart';
import '../models/panduanmodels/pernafasanpanduan.dart';

final panduanModel = PanduanModel(
  pengetahuan: [
    PengetahuanModel(
      judul:
          'AJARAN BUDI PEKERTI LUHUR SEBAGAI ROH DIMENSI KEJIWAAN KESATRIA PEWARIS SILAT NUSANTARA',
      pdfURL: '',
    ),
    PengetahuanModel(
      judul: 'SEJARAH PENCAK SILAT',
      pdfURL: '',
    ),
    PengetahuanModel(
      judul: 'PENGERTIAN PENCAK SILAT',
      pdfURL: '',
    ),
    PengetahuanModel(
      judul: 'HAKEKAT PENCAK SILAT',
      pdfURL: '',
    ),
    PengetahuanModel(
      judul: 'CITA-CITA BESAR PENDIDIKAN PENCAK SILAT',
      pdfURL: '',
    ),
    PengetahuanModel(
      judul: 'FALSAFAH ETIKA PENCAK SILAT',
      pdfURL: '',
    ),
    PengetahuanModel(
      judul: 'NILAI-NILAI LUHUR PENCAK SILAT',
      pdfURL: '',
    ),
  ],
  makna: [
    MaknaModel(
      pdfURL: 'assets/pdf/maknasatu.pdf',
      judul: 'CATUR PRASETYA NUSANTARA',
    ),
    MaknaModel(
      pdfURL: 'assets/pdf/maknadua.pdf',
      judul: 'LAMBANG PERGURUAN',
    ),
    MaknaModel(
      pdfURL: 'assets/pdf/maknatiga.pdf',
      judul: 'SIKAP DASAR',
    ),
    MaknaModel(
      pdfURL: 'assets/pdf/maknaempat.pdf',
      judul: 'KIASAN SIKAP PASANG',
    ),
    MaknaModel(
      pdfURL: 'assets/pdf/maknalima.pdf',
      judul: 'HORMAT PERGURUAN',
    ),
  ],
  pernafasan: [
    PernafasanModel(
      pdfURL: 'assets/pdf/PaduanPernafasansatu.pdf',
      judul: 'SEJARAH BERKEMBANGNYA METODE PERNAFASAN',
    ),
    PernafasanModel(
      pdfURL: 'assets/pdf/PaduanPernafasandua.pdf',
      judul: 'IMPLEMENTASI PERNAFASAN SEBAGAI POWER DAN IMAGENAZI',
    ),
    PernafasanModel(
      pdfURL: 'assets/pdf/PaduanPernafasantiga.pdf',
      judul: 'KEILMUAN PERNAFASAN NUSANTARA TERPADU',
    ),
    PernafasanModel(
      pdfURL: 'assets/pdf/PaduanPernafasanempat.pdf',
      judul: 'UJI PERNAFASAN NUSANTARA TERPADU',
    ),
    PernafasanModel(
      pdfURL: 'assets/pdf/PaduanPernafasanlima.pdf',
      judul: 'KATEGORI KEILMUAN',
    ),
  ],
  pedoman: [
    PedomanModel(
      pdfURL: 'assets/pdf/pedomansatu.pdf',
      judul: 'TATA TERTIB LATIHAN',
    ),
    PedomanModel(
      pdfURL: 'assets/pdf/pedomandua.pdf',
      judul: 'SISTIMATIKA  LATIHAN',
    ),
    PedomanModel(
      pdfURL: 'assets/pdf/pedomantiga.pdf',
      judul: 'MATERI LATIHAN DAN UJIAN',
    ),
  ],
);
