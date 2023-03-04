import '../../models/materi/golongan.dart';

part 'data_tingkat.dart';
part 'data_golongan.dart';
part 'data_sub_tingkat.dart';
part 'data_sub_tingkat_2.dart';
part 'data_video.dart';

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
