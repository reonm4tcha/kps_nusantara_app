// ignore_for_file: public_member_api_docs, sort_constructors_first
class Golongan {
  final String imageUrl;
  final String name;
  final List tingkat;

  Golongan({
    required this.imageUrl,
    required this.name,
    required this.tingkat,
  });
}

class Tingkat {
  final String name;
  Tingkat({
    required this.name,
  });
}
