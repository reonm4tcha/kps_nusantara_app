import '../panduanmodels/maknapanduan.dart';
import '../panduanmodels/pedomanpanduan.dart';
import '../panduanmodels/pengetahuanpanduan.dart';
import '../panduanmodels/pernafasanpanduan.dart';

class PanduanModel {
  final List<String> title;
  final List<PengetahuanModel> pengetahuan;
  final List<MaknaModel> makna;
  final List<PernafasanModel> pernafasan;
  final List<PedomanModel> pedoman;

  PanduanModel({
    required this.title,
    required this.pengetahuan,
    required this.makna,
    required this.pernafasan,
    required this.pedoman,
  });
}
