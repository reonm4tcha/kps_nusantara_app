import 'package:ksp_nusantara_app/data/icons.dart';
import 'package:ksp_nusantara_app/models/golongan.dart';

final _pelantikan = Tingkat(
  name: 'Pelantikan',
  subImageUrl: 'assets/image/FORM P.jpg',
);

final _sabukHitam = Tingkat(
  name: 'Sabuk Hitam',
  subImageUrl: 'assets/image/FORM HITAM.jpg',
);

final _sabukBiru = Tingkat(
  name: 'Sabuk Biru',
  subImageUrl: 'assets/image/FORM B.jpg',
);

final _sabukBiru1 = Tingkat(
  name: 'Sabuk Biru Belati 1',
  subImageUrl: 'assets/image/FORM B1.jpg',
);

final _sabukBiru2 = Tingkat(
  name: 'Sabuk Biru Belati 2',
  subImageUrl: 'assets/image/FORM B2.jpg',
);

final _sabukHijau = Tingkat(
  name: 'Sabuk Hijau',
  subImageUrl: 'assets/image/FORM H.jpg',
);

final _sabukHijau1 = Tingkat(
  name: 'Sabuk Hijau Belati 1',
  subImageUrl: 'assets/image/FORM H1.jpg',
);

final _sabukHijau2 = Tingkat(
  name: 'Sabuk Hijau Belati 2',
  subImageUrl: 'assets/image/FORM H2.jpg',
);

final _sabukCokelat = Tingkat(
  name: 'Sabuk Cokelat',
  subImageUrl: 'assets/image/FORM C.jpg',
);

final _sabukCokelat1 = Tingkat(
  name: 'Sabuk Cokelat Belati 1',
  subImageUrl: 'assets/image/FORM C1.jpg',
);
final _sabukCokelat2 = Tingkat(
  name: 'Sabuk Cokelat Belati 2',
  subImageUrl: 'assets/image/FORM C2.jpg',
);

final _sabukUngu = Tingkat(
  name: 'Sabuk Ungu',
  subImageUrl: 'assets/image/FORM U.jpg',
);

final _sabukUngu1 = Tingkat(
  name: 'Sabuk Ungu Belati 1',
  subImageUrl: 'assets/image/FORM U1.jpg',
);
final _sabukUngu2 = Tingkat(
  name: 'Sabuk Ungu Belati 2',
  subImageUrl: 'assets/image/FORM U2.jpg',
);

final _sabukMerah = Tingkat(
  name: 'Sabuk Merah',
  subImageUrl: 'assets/image/FORM M.jpg',
);

final _sabukJingga = Tingkat(
  name: 'Sabuk Jingga',
  subImageUrl: 'assets/image/FORM J.jpg',
);
final _sabukKuning = Tingkat(
  name: 'Sabuk Kuning',
  subImageUrl: 'assets/image/FORM K.jpg',
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

final List materiDetailHeaders = [
  'Teknik Dasar',
  'Latihan Beladiri',
  'Keindahan Gerak',
  'Ketangkasan',
  'Olah Pernafasan',
  'Form Ujian',
];

final List<String> icons = [
  iconTeknikDasar,
  iconLatihanBeladiri,
  iconKeindahanGerak,
  iconKetangkasan,
  iconOlahPernafasan,
  iconFormUjian,
];
