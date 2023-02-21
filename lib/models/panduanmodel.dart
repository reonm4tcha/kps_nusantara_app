import '../models/maknapanduan.dart';
import '../models/pedomanpanduan.dart';
import '../models/pengetahuanpanduan.dart';
import '../models/pernafasanpanduan.dart';

class PanduanModel {
  final List<PengetahuanModel> pengetahuan;
  final List<MaknaModel> makna;
  final List<PernafasanModel> pernafasan;
  final List<PedomanModel> pedoman;

  PanduanModel({
    required this.pengetahuan,
    required this.makna,
    required this.pernafasan,
    required this.pedoman,
  });
}
