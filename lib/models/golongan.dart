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

class SubTingkat {
  final List<String> subTingkatList;

  SubTingkat({
    required this.subTingkatList,
  });
}
