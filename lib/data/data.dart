import 'package:ksp_nusantara_app/models/golongan.dart';

final _pelantikan = Tingkat(
  name: 'Pelantikan',
  form: 'assets/image/FORM P.jpg',
  header: _materiDetailHeaders,
  subTingkat: [
    _pTeknikDasar,
    _pLatihanBeladiri,
    _pKeindahanGerak,
    _pKetangkasan,
    _pOlahPernafasan,
  ],
);

final _sabukHitam = Tingkat(
  name: 'Sabuk Hitam',
  form: 'assets/image/FORM HITAM.jpg',
  header: _materiDetailHeaders,
  subTingkat: [
    _hitamTeknikDasar,
    _hitamLatihanBeladiri,
    _hitamKeindahanGerak,
    _hitamKetangkasan,
    _hitamOlahPernafasan
  ],
);

final _sabukBiru = Tingkat(
  name: 'Sabuk Biru',
  form: 'assets/image/FORM B.jpg',
  header: _materiDetailHeaders,
  subTingkat: [
    _bTeknikDasar,
    _bLatihanBeladiri,
    _bKeindahanGerak,
    _bKetangkasan,
    _bOlahPernafasan,
  ],
);

final _sabukBiru1 = Tingkat(
  name: 'Sabuk Biru Belati 1',
  form: 'assets/image/FORM B1.jpg',
  header: _materiDetailHeaders,
  subTingkat: [
    _b1TeknikDasar,
    _b1LatihanBeladiri,
    _b1KeindahanGerak,
    _b1Ketangkasan,
    _b1OlahPernafasan,
  ],
);

final _sabukBiru2 = Tingkat(
  name: 'Sabuk Biru Belati 2',
  form: 'assets/image/FORM B2.jpg',
  header: _materiDetailHeaders,
  subTingkat: [
    _b2TeknikDasar,
    _b2LatihanBeladiri,
    _b2KeindahanGerak,
    _b2Ketangkasan,
    _b2OlahPernafasan,
  ],
);

final _sabukHijau = Tingkat(
  name: 'Sabuk Hijau',
  form: 'assets/image/FORM H.jpg',
  header: _materiDetailHeaders,
  subTingkat: [
    _hTeknikDasar,
    _hLatihanBeladiri,
    _hKeindahanGerak,
    _hKetangkasan,
    _hOlahPernafasan,
  ],
);

final _sabukHijau1 = Tingkat(
  name: 'Sabuk Hijau Belati 1',
  form: 'assets/image/FORM H1.jpg',
  header: _materiDetailHeaders,
  subTingkat: [
    _h1TeknikDasar,
    _h1LatihanBeladiri,
    _h1KeindahanGerak,
    _h1Ketangkasan,
    _h1OlahPernafasan,
  ],
);

final _sabukHijau2 = Tingkat(
  name: 'Sabuk Hijau Belati 2',
  form: 'assets/image/FORM H2.jpg',
  header: _materiDetailHeaders,
  subTingkat: [
    _h2TeknikDasar,
    _h2LatihanBeladiri,
    _h2KeindahanGerak,
    _h2Ketangkasan,
    _h2OlahPernafasan,
  ],
);

final _sabukCokelat = Tingkat(
  name: 'Sabuk Cokelat',
  form: 'assets/image/FORM C.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);

final _sabukCokelat1 = Tingkat(
  name: 'Sabuk Cokelat Belati 1',
  form: 'assets/image/FORM C1.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);

final _sabukCokelat2 = Tingkat(
  name: 'Sabuk Cokelat Belati 2',
  form: 'assets/image/FORM C2.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);

final _sabukUngu = Tingkat(
  name: 'Sabuk Ungu',
  form: 'assets/image/FORM U.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);

final _sabukUngu1 = Tingkat(
  name: 'Sabuk Ungu Belati 1',
  form: 'assets/image/FORM U1.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);

final _sabukUngu2 = Tingkat(
  name: 'Sabuk Ungu Belati 2',
  form: 'assets/image/FORM U2.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);

final _sabukMerah = Tingkat(
  name: 'Sabuk Merah',
  form: 'assets/image/FORM M.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);

final _sabukJingga = Tingkat(
  name: 'Sabuk Jingga',
  form: 'assets/image/FORM J.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);
final _sabukKuning = Tingkat(
  name: 'Sabuk Kuning',
  form: 'assets/image/FORM K.jpg',
  header: _materiDetailHeaders,
  subTingkat: [_pTeknikDasar, _pLatihanBeladiri],
);

final _calonSatria = Golongan(
  imageUrl: 'assets/image/calon_satria.png',
  name: 'Golongan Calon Satria',
  tingkat: [
    _pelantikan,
    _sabukHitam,
  ],
);

final _satriaMuda = Golongan(
  imageUrl: 'assets/image/Kesatria (Icon 2-4).png',
  name: 'Golongan Satria Muda',
  tingkat: [
    _sabukBiru,
    _sabukBiru1,
    _sabukBiru2,
  ],
);

final _satriaMadya = Golongan(
  imageUrl: 'assets/image/Kesatria (Icon 2-4).png',
  name: 'Golongan Satria Madya',
  tingkat: [
    _sabukHijau,
    _sabukHijau1,
    _sabukHijau2,
  ],
);

final _satriaUtama = Golongan(
  imageUrl: 'assets/image/Kesatria (Icon 2-4).png',
  name: 'Golongan Satria Utama',
  tingkat: [
    _sabukCokelat,
    _sabukCokelat1,
    _sabukCokelat2,
  ],
);

final _pandegaMuda = Golongan(
  imageUrl: 'assets/image/Pandega (Icon 5-7).png',
  name: 'Golongan Pandega Muda',
  tingkat: [
    _sabukUngu,
    _sabukUngu1,
    _sabukUngu2,
  ],
);

final _pandegaMadya = Golongan(
  imageUrl: 'assets/image/Pandega (Icon 5-7).png',
  name: 'Golongan Pandega Madya',
  tingkat: [_sabukMerah],
);

final _pandegaUtama = Golongan(
  imageUrl: 'assets/image/Pandega (Icon 5-7).png',
  name: 'Golongan Pandega Utama',
  tingkat: [_sabukJingga],
);

final _pendekarMuda = Golongan(
  imageUrl: 'assets/image/Pendekar (Icon 8).png',
  name: 'Golongan Pendekar Muda',
  tingkat: [_sabukKuning],
);

final List<Golongan> golonganList = [
  _calonSatria,
  _satriaMuda,
  _satriaMadya,
  _satriaUtama,
  _pandegaMuda,
  _pandegaMadya,
  _pandegaUtama,
  _pendekarMuda,
];

final List<String> _materiDetailHeaders = [
  'Teknik Dasar',
  'Latihan Beladiri',
  'Keindahan Gerak',
  'Ketangkasan',
  'Olah Pernafasan',
];

final _pTeknikDasar = SubTingkat(subTingkatList: [
  'Kuda-kuda',
  'Sikap Pasang',
  'Tangkisan',
  'Pukulan',
  'Tendangan',
  'Elakan'
]);

final _pLatihanBeladiri = SubTingkat(subTingkatList: []);
final _pKeindahanGerak = SubTingkat(subTingkatList: []);
final _pKetangkasan = SubTingkat(subTingkatList: []);
final _pOlahPernafasan = SubTingkat(subTingkatList: []);

final _hitamTeknikDasar = SubTingkat(
  subTingkatList: [
    'Kuda-kuda',
    'Sikap Pasang',
    'Tangkisan',
    'Pukulan',
    'Tendangan',
    'Elakan',
  ],
);

final _hitamLatihanBeladiri = SubTingkat(subTingkatList: ['Pukul - Sambut']);

final _hitamKeindahanGerak = SubTingkat(subTingkatList: ['Senam Jurus']);

final _hitamKetangkasan = SubTingkat(subTingkatList: []);

final _hitamOlahPernafasan = SubTingkat(
  subTingkatList: [
    'Dasar Power',
    'Dasar Getaran',
  ],
);

final _bTeknikDasar = SubTingkat(
  subTingkatList: [
    'Kuda - kuda',
    'Sikap Pasang',
    'Langkah',
    'Tangkisan',
    'Pukulan',
    'Tendangan',
    'Elakan',
    'Sikuan',
    'Redaman/jatuhan',
  ],
);

final _bLatihanBeladiri = SubTingkat(
  subTingkatList: ['Pukul - Sambut'],
);

final _bKeindahanGerak = SubTingkat(
  subTingkatList: ['Senam Jurus'],
);

final _bKetangkasan = SubTingkat(subTingkatList: []);

final _bOlahPernafasan = SubTingkat(
  subTingkatList: [
    'Dasar Power',
    'Dasar Getaran',
  ],
);

final _b1TeknikDasar = SubTingkat(
  subTingkatList: [
    'Sikap Pasang',
    'Langkah',
    'Tangkisan',
    'Pukulan',
    'Tendangan',
    'Elakan',
    'Sikuan',
    'Redaman/jatuhan',
    'Tangkapan Kaki',
  ],
);

final _b1LatihanBeladiri = SubTingkat(
  subTingkatList: [
    'Pukul - Sambut',
    'Jurus Pertandingan',
    'Tuntun',
  ],
);

final _b1KeindahanGerak = SubTingkat(subTingkatList: ['Jurus Tunggal/Solo']);

final _b1Ketangkasan =
    SubTingkat(subTingkatList: ['Sambung Pertandingan Versi IPSI']);

final _b1OlahPernafasan = SubTingkat(
  subTingkatList: [
    'Dasar Power',
    'Dasar Getaran',
  ],
);

final _b2TeknikDasar = SubTingkat(
  subTingkatList: [
    'Kuda - kuda',
    'Langkah',
    'Tangkisan',
    'Pukulan',
    'Tendangan',
    'Elakan',
    'Sikuan',
    'Redaman',
    'Tengkapan Kaki',
  ],
);

final _b2LatihanBeladiri = SubTingkat(
  subTingkatList: [
    'Jurus Pertandingan',
    'Tuntun',
  ],
);

final _b2KeindahanGerak = SubTingkat(subTingkatList: []);

final _b2Ketangkasan =
    SubTingkat(subTingkatList: ['Sabung Pertandingan Versi IPSI']);

final _b2OlahPernafasan = SubTingkat(
  subTingkatList: [
    'Dasar Power',
    'Dasar Getaran',
  ],
);

final _hTeknikDasar = SubTingkat(
  subTingkatList: [
    'Kuda - kuda',
    'Langkah',
    'Tangkisan',
    'Pukulan',
    'Tendangan',
    'Elakan',
    'Sikuan',
    'Jatuhan/Bantingan',
    'Kuncian',
    'Redaman',
  ],
);

final _hLatihanBeladiri = SubTingkat(
  subTingkatList: [
    'Jurus Pertandingan',
    'Jurus Pembelaan',
    'Olah Nafas',
  ],
);

final _hKeindahanGerak = SubTingkat(
  subTingkatList: [
    'Jurus Tunggal/Solo',
    'Jurus Tunggal IPSI',
  ],
);

final _hKetangkasan =
    SubTingkat(subTingkatList: ['Sambung Pertandingan Versi IPSI']);

final _hOlahPernafasan = SubTingkat(
  subTingkatList: [
    'Dasar Power',
    'Dasar Getaran',
  ],
);

final _h1TeknikDasar = SubTingkat(
  subTingkatList: [
    'Kuda - kuda',
    'Langkah',
    'Tangkisan',
    'Pukulan',
    'Tendangan',
    'Lututan',
    'Jatuhan',
    'Kuncian',
    'Redaman',
  ],
);

final _h1LatihanBeladiri = SubTingkat(
  subTingkatList: [
    'Jurusan Pertandingan',
    'Jurus Pembelaan',
    'Olah Nafas',
  ],
);

final _h1KeindahanGerak = SubTingkat(
  subTingkatList: [
    'Kembangan Bebas',
    'Jurusan Regu Persilat',
  ],
);

final _h1Ketangkasan =
    SubTingkat(subTingkatList: ['Sambung Pertandingan Versi IPSI']);

final _h1OlahPernafasan = SubTingkat(
  subTingkatList: [
    'Dasar Power',
    'Dasar Getaran',
  ],
);

final _h2TeknikDasar = SubTingkat(
  subTingkatList: [
    'Kuda - kuda',
    'Langkah',
    'Tangkisan',
    'Pukulan',
    'Tendangan',
    'Lututan',
    'Jatuhan',
    'Kuncian',
    'Redaman',
  ],
);

final _h2LatihanBeladiri = SubTingkat(
  subTingkatList: [
    'Jurus Pertandingan',
    'Jurus Pembelaan',
    'Olah Nafas',
  ],
);

final _h2KeindahanGerak = SubTingkat(
  subTingkatList: [
    'Kembangan Bebas',
    'Jurus Regu Persilat',
  ],
);

final _h2Ketangkasan =
    SubTingkat(subTingkatList: ['Sabung Pertandingan Versi IPSI']);

final _h2OlahPernafasan = SubTingkat(
  subTingkatList: [
    'Dasar Power',
    'Dasar Getaran',
  ],
);
