import 'package:ksp_nusantara_app/models/golongan.dart';

import '../models/sub_tingkat.dart';
import '../models/tingkat.dart';

part 'data_tingkat.dart';
part 'data_golongan.dart';
part 'data_sub_tingkat.dart';
part 'data_sub_tingkat_2.dart';

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
