// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:ksp_nusantara_app/models/tingkat.dart';

class Golongan {
  final String imageUrl;
  final String name;
  final List<Tingkat> tingkat;

  Golongan({
    required this.imageUrl,
    required this.name,
    required this.tingkat,
  });
}
