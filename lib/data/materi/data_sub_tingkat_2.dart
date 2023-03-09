part of 'data.dart';

const String dapow = 'Dasar Power';
const String dager = 'Dasar Getaran';

final _pKuda = SubTingkat2(
  name: 'Kuda-kuda',
  list: ['Hadap'],
  vidAssets: [_vidBlueming, _vidTest],
);
final _pSiPas = SubTingkat2(
  name: 'Sikap Pasang',
  list: ['I Sampai VI', 'XII'],
  vidAssets: [_vidBjorka, _vidTest],
);
final _pTangkis = SubTingkat2(
  name: 'Tangkisan',
  list: ['Buang Luar', 'Buang Dalam'],
  vidAssets: [_vidBjorka, _vidTest],
);

final _pPukul = SubTingkat2(
  name: 'Pukulan',
  list: ['Lurus', 'Buku-buku', 'Tusuk Jari'],
  vidAssets: [_vidBjorka, _vidTest, _vidBlueming],
);

final _pTendang = SubTingkat2(
  name: 'Tendangan',
  list: ['Lurus', 'Sabit', 'T', 'Belakang'],
  vidAssets: [_vidBjorka, _vidTest, _vidBlueming],
);

final _pElak = SubTingkat2(
  name: 'Elakan',
  list: ['Ales'],
  vidAssets: [_vidBjorka, _vidTest],
);

final _hitamTekDasKuda = SubTingkat2(
  name: 'Kuda-kuda',
  list: ['Serong', 'Pipih'],
  vidAssets: [_vidBjorka, _vidTest],
);

final _hitamTekDasSiPas = SubTingkat2(
  name: 'Sikap Pasang',
  list: ['I Sampai XII'],
  vidAssets: [_vidBjorka, _vidTest],
);

final _hitamTekDasTang = SubTingkat2(
  name: 'Tangkisan',
  list: ['Buang Luar dan Dalam', 'Jepit Atas dan Bawah', 'Kipat'],
  vidAssets: [_vidBjorka, _vidTest],
);

final _hitamTekDasPuk = SubTingkat2(
    name: 'Pukulan',
    list: ['Lurus', 'Buku-buku', 'Tusuk Jari', 'Rangkap/Papas'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hitamTekDasTen = SubTingkat2(
    name: 'Tendangan',
    list: ['Lurus', 'T', 'Sabit', 'Belakang', 'Serong'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hitamTekDasElak = SubTingkat2(
    name: 'Elakan',
    list: ['Ales', 'Harimau'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hitamPuSam = SubTingkat2(
    name: 'Pukul-Sambut',
    list: ['I Sampai IV'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hitamSenJu = SubTingkat2(
    name: 'Senam Jurus',
    list: ['I Sampai VI'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hitamDaPow = SubTingkat2(
    name: '$dapow (Sasaran 1 Hebel)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _hitamDaGer = SubTingkat2(
    name: '$dager (Halang Rintang)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _bKuda = SubTingkat2(
    name: 'Kuda-kuda', list: ['Pipih'], vidAssets: [_vidBjorka, _vidTest]);

final _bSiPas = SubTingkat2(
    name: 'Sikap Pasang',
    list: ['I Sampai XII'],
    vidAssets: [_vidBjorka, _vidTest]);

final _bLangkah = SubTingkat2(
    name: 'Langkah', list: ['Segitiga'], vidAssets: [_vidBjorka, _vidTest]);

final _bTangkis = SubTingkat2(
    name: 'Tangkisan',
    list: ['Kipat', 'Kepuk'],
    vidAssets: [_vidBjorka, _vidTest]);

final _bPukul = SubTingkat2(
    name: 'Pukulan',
    list: ['Lurus', 'Buku-buku', 'Tusukan Jari', 'Punggung Tangan'],
    vidAssets: [_vidBjorka, _vidTest]);

final _bTendang = SubTingkat2(
    name: 'Tendangan',
    list: ['Lurus', 'T', 'Sabit Lompat', 'Gejos'],
    vidAssets: [_vidBjorka, _vidTest]);

final _bElak = SubTingkat2(
    name: 'Elakan', list: ['Egos'], vidAssets: [_vidBjorka, _vidTest]);

final _bSikuan = SubTingkat2(
    name: 'Sikuan',
    list: ['Tusuk', 'Sangga'],
    vidAssets: [_vidBjorka, _vidTest]);

final _bRedam = SubTingkat2(
    name: 'Redaman/Jatuhan',
    list: ['Samping', 'Depan'],
    vidAssets: [_vidBjorka, _vidTest]);

final _bPuSam = SubTingkat2(
    name: 'Pukul-Sambut',
    list: ['V Sampai VIII'],
    vidAssets: [_vidBjorka, _vidTest]);

final _bSenJu = SubTingkat2(
    name: 'Senam Jurus',
    list: ['VII Sampai XII'],
    vidAssets: [_vidBjorka, _vidTest]);

final _bDaPow = SubTingkat2(
    name: '$dapow (Sasaran 2 Hebel)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _bDaGer = SubTingkat2(
    name: '$dager (Halang Rintang)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1SiPas = SubTingkat2(
    name: 'Sikap Pasang',
    list: ['VII Sampai XII'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1Langkah = SubTingkat2(
    name: 'Langkah', list: ['Zig-zag'], vidAssets: [_vidBjorka, _vidTest]);

final _b1Tangkis = SubTingkat2(
    name: 'Tangkisan',
    list: ['Sangga', 'Kepruk Gantung'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1Pukul = SubTingkat2(
    name: 'Pukulan',
    list: ['Sanggah', 'Papas'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1Tendang = SubTingkat2(
    name: 'Tendangan',
    list: ['Serong', 'Gejos'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1Elak = SubTingkat2(
    name: 'Elakan', list: ['Egos'], vidAssets: [_vidBjorka, _vidTest]);

final _b1Sikuan = SubTingkat2(
    name: 'Sikuan',
    list: ['Samping Dalam', 'Samping Luar'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1Redam = SubTingkat2(
    name: 'Redaman/Jatuhan',
    list: ['Guling Depan', 'Belakang'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1TangKa = SubTingkat2(
    name: 'Tangkapan Kaki', list: ['Dalam'], vidAssets: [_vidBjorka, _vidTest]);

final _b1PuSam = SubTingkat2(
    name: 'Pukul-Sambut',
    list: ['VII Sampai IX'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1JuPer = SubTingkat2(
    name: 'Jurus Pertandingan',
    list: ['I Sampai IV'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1Tuntun = SubTingkat2(
    name: 'Tuntun', list: ['1 Serangan'], vidAssets: [_vidBjorka, _vidTest]);

final _b1Solo = SubTingkat2(
    name: 'Jurus Tunggal/Solo',
    list: ['I (Satu)'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1DaPow = SubTingkat2(
    name: '$dapow (Sasaran 2 Hebel, 1 Besi Dragon R-1)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _b1DaGer = SubTingkat2(
    name: '$dager (Halang Rintang)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _b2Kuda = SubTingkat2(
    name: 'Kuda-kuda', list: ['Belakang'], vidAssets: [_vidBjorka, _vidTest]);

final _b2Langkah = SubTingkat2(
    name: 'Langkah', list: ['Ladam (U)'], vidAssets: [_vidBjorka, _vidTest]);

final _b2Tangkis = SubTingkat2(
    name: 'Tangkisan', list: ['Potong'], vidAssets: [_vidBjorka, _vidTest]);

final _b2Pukul = SubTingkat2(
    name: 'Pukulan',
    list: ['Ayun', 'Sudut'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b2Tendang = SubTingkat2(
    name: 'Tendangan', list: ['Putar'], vidAssets: [_vidBjorka, _vidTest]);

final _b2Elak = SubTingkat2(
    name: 'Elakan',
    list: ['Selulup (Menyelam)'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b2Sikuan = SubTingkat2(
    name: 'Sikuan',
    list: ['Bawah', 'Belakang'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b2Redam = SubTingkat2(
    name: 'Redaman',
    list: ['Guling Belakang', 'Punggung'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b2TangKa = SubTingkat2(
    name: 'Tangkapan Kaki', list: ['Luar'], vidAssets: [_vidBjorka, _vidTest]);

final _b2JuPer = SubTingkat2(
    name: 'Jurus Pertandingan',
    list: ['V Sampai IX'],
    vidAssets: [_vidBjorka, _vidTest]);

final _b2Tuntun = SubTingkat2(
    name: 'Tuntun', list: ['2 Serangan'], vidAssets: [_vidBjorka, _vidTest]);

final _samPer = SubTingkat2(
    name: 'Sambung Pertandingan Versi IPSI',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _b2DaPow = SubTingkat2(
    name: '$dapow (Sasaran 2 Hebel, 2 Besi Dragon R-1)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _b2DaGer = SubTingkat2(
    name: '$dager (Halang Rintang)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _hKuda = SubTingkat2(
    name: 'Kuda-kuda', list: ['Betawi'], vidAssets: [_vidBjorka, _vidTest]);

final _hLangkah = SubTingkat2(
    name: 'Langkah', list: ['Curi'], vidAssets: [_vidBjorka, _vidTest]);

final _hTangkis = SubTingkat2(
    name: 'Tangkisan', list: ['Liuk'], vidAssets: [_vidBjorka, _vidTest]);

final _hPukul = SubTingkat2(
    name: 'Pukulan',
    list: ['Gebang Dalam', 'Gebang Luar'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hTendang = SubTingkat2(name: 'Tendangan', list: [
  'Teratai',
  'Belakang',
  'T Bawah',
], vidAssets: [
  _vidBjorka,
  _vidTest
]);

final _hElak = SubTingkat2(
    name: 'Elakan', list: ['Liuk'], vidAssets: [_vidBjorka, _vidTest]);

final _hSikuan = SubTingkat2(
    name: 'Sikuan', list: ['Belah'], vidAssets: [_vidBjorka, _vidTest]);

final _hJatuh = SubTingkat2(
    name: 'Jatuhan/Bantingan',
    list: ['Sapuan Tegak', 'Koset'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hKunci = SubTingkat2(
    name: 'Kuncian',
    list: ['Pergelangan Tangan'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hRedam = SubTingkat2(
    name: 'Redaman', list: ['Meroda'], vidAssets: [_vidBjorka, _vidTest]);

final _hJuPer = SubTingkat2(
    name: 'Jurus Pertandingan',
    list: ['X Sampai XIV'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hJuPem = SubTingkat2(
    name: 'Jurus Pembelaan',
    list: ['1 A,B,C'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hOlah = SubTingkat2(
    name: 'Olah Nafas',
    list: ['Pengerasan Tubuh 1 Serangan'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hSolo = SubTingkat2(
    name: 'Jurus Tunggal/Solo',
    list: ['2 (Dua)'],
    vidAssets: [_vidBjorka, _vidTest]);

final _hJuTung = SubTingkat2(
    name: 'Jurus Tunggal IPSI', list: [], vidAssets: [_vidBjorka, _vidTest]);

final _hDaPow = SubTingkat2(
    name: '$dapow (2 Besi Dragon R-1, 1 Plat Baja K-1)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _hDaGer = SubTingkat2(
    name: '$dager (Halang Rintang)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1Kuda = SubTingkat2(
    name: 'Kuda-kuda', list: ['Pilin'], vidAssets: [_vidBjorka, _vidTest]);

final _h1Langkah = SubTingkat2(
    name: 'Langkah',
    list: ['Kucing', 'Tipu'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1Tangkis = SubTingkat2(
    name: 'Tangkisan',
    list: ['Lenggang Bawah', 'Lenggang Atas', 'Kibas Tangan', 'Kibas Sisik'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1Pukul = SubTingkat2(
    name: 'Pukulan',
    list: ['Tebang Dalam', 'Tebang ke Luar', 'Tampar Dalam', 'Tampar ke Luar'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1Tendang = SubTingkat2(
    name: 'Tendangan',
    list: ['Pacul', 'Taji'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1Lutut = SubTingkat2(
    name: 'Lututan', list: ['Tusuk'], vidAssets: [_vidBjorka, _vidTest]);

final _h1Jatuh = SubTingkat2(
    name: 'Jatuhan',
    list: ['Sapuan Rebah Depan', 'Sapuan Rebah Belakang'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1Kunci = SubTingkat2(
    name: 'Kuncian', list: ['Siku'], vidAssets: [_vidBjorka, _vidTest]);

final _h1Redam = SubTingkat2(
    name: 'Redaman', list: ['Melenting'], vidAssets: [_vidBjorka, _vidTest]);

final _h1JuPer = SubTingkat2(
    name: 'Jurus Pertandingan',
    list: ['XV Sampai XIX'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1JuPem = SubTingkat2(
    name: 'Jurus Pembelaan',
    list: ['2 A,B,C'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1Olah = SubTingkat2(
    name: 'Olah Nafas',
    list: ['Pengerasan Tubuh 2 Serangan'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1KemBas = SubTingkat2(
    name: 'Kembangan Bebas',
    list: ['Minimal 10 Rangkaian'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1JuReg = SubTingkat2(
    name: 'Jurus Regu Pesilat',
    list: ['I Sampai VI'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1DaPow = SubTingkat2(
    name: '$dapow (2 Besi Dragon R-1, 1 Besi Dragon R-2, 1 Plat Baja K-1)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _h1DaGer = SubTingkat2(
    name: '$dager (Halang Rintang)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2Kuda = SubTingkat2(
    name: 'Kuda-kuda', list: ['Silang'], vidAssets: [_vidBjorka, _vidTest]);

final _h2Langkah = SubTingkat2(
    name: 'Langkah',
    list: ['Segiempat', 'Minang'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2Tangkis = SubTingkat2(
    name: 'Tangkisan',
    list: ['Caram', 'Kibas Kaki Dalam', 'Kibas Kaki Luar', 'Tepis'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2Pukul = SubTingkat2(
    name: 'Pukulan',
    list: ['Kepruk', 'Kedut', 'Palu', 'Belah'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2Tendang = SubTingkat2(
    name: 'Tendangan', list: ['Gaet'], vidAssets: [_vidBjorka, _vidTest]);

final _h2Lutut = SubTingkat2(
    name: 'Lututan', list: ['Putar'], vidAssets: [_vidBjorka, _vidTest]);

final _h2Jatuh = SubTingkat2(
    name: 'Jatuhan',
    list: ['Ungkitan', 'Kaitan', 'Sabetan'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2Kunci = SubTingkat2(
    name: 'Kuncian', list: ['Bahu'], vidAssets: [_vidBjorka, _vidTest]);

final _h2Redam = SubTingkat2(
    name: 'Redaman',
    list: ['Lompat Harimau'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2JuPer = SubTingkat2(
    name: 'Jurus Pertandingan',
    list: ['XX Sampai XXIV'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2JuPem = SubTingkat2(
    name: 'Jurus Pembelaan',
    list: ['3 A,B,C'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2Olah = SubTingkat2(
    name: 'Olah Nafas',
    list: ['Pengerasan Tubuh 2 Penyerang'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2KemBas = SubTingkat2(
    name: 'Kembangan Bebas',
    list: ['Minimal 15 Rangkaian'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2JuReg = SubTingkat2(
    name: 'Jurus Regu Pesilat',
    list: ['Lengkap'],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2DaPow = SubTingkat2(
    name: '$dapow (2 Besi Dragon R-1, 2 Besi Dragon R-2, 1 Plat Baja K-1)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);

final _h2DaGer = SubTingkat2(
    name: '$dager (Halang Rintang)',
    list: [],
    vidAssets: [_vidBjorka, _vidTest]);
