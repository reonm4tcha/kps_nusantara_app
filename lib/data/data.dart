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
    'Sabuk Biru Belati 3',
<<<<<<< HEAD
    'Sabuk Biru Belati 4',
=======
    'Test Renz'
>>>>>>> c5ce3aadb0100a63a483062c31f34041d026e60c
  ],
);

final List<Golongan> golonganList = [
  _calonSatria,
  _satriaMuda,
];
