import 'package:ksp_nusantara_app/models/sub_tingkat.dart';

class Tingkat {
  final String name;
  final String form;
  final List<String> header;
  final List<SubTingkat> subTingkat;

  Tingkat({
    required this.name,
    required this.form,
    required this.header,
    required this.subTingkat,
  });
}
