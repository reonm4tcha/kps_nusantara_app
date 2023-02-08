import 'package:ksp_nusantara_app/models/golongan.dart';

final _calonSatria = Golongan(
  imageUrl: '/assets/image/logo.jpg',
  name: 'Golongan Calon Satria',
  tingkat: [
    'Pelantikan',
    'Sabuk Hitam',
  ],
);

final _satriaMuda = Golongan(
  imageUrl: '/assets/image/logo.jpg',
  name: 'Golongan Satria Muda',
  tingkat: [
    'Sabuk Biru',
    'Sabuk Biru Belati 1',
    'Sabuk Biru Belati 2',
  ],
);

final List<Golongan> golonganList = [
  _calonSatria,
  _satriaMuda,
];
