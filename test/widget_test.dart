import 'package:alquran/data/models/surah.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri url = Uri.parse("https://equran.id/api/surat");

  var res = await http.get(url);
  List data = json.decode(res.body);

  // 1-114 -> index of 1113 = an-nas
  // print(data[113]);

  // changes raw data api to Models Surah
  Surah surahAnnas = Surah.fromJson(data[113]);

  print(surahAnnas.nomor);
  print("=========================");
  print(surahAnnas.nama);
  print("=========================");
  print(surahAnnas.namaLatin);
  print("=========================");
  print(surahAnnas.jumlahAyat);
  print("=========================");
  print(surahAnnas.deskripsi);
  print("=========================");
  print(surahAnnas.audio);
}
