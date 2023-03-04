// ignore_for_file: public_member_api_docs, sort_constructors_first
part 'tingkat.dart';
part 'sub_tingkat.dart';
part 'sub_tingkat_2.dart';

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
