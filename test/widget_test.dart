import 'package:alquran/data/models/detail_surah.dart';
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
  print("=========================");

  Uri urlAnnas = Uri.parse("https://equran.id/api/surat/${surahAnnas.nomor}");

  var resAnnas = await http.get(urlAnnas);
  List dataAnnas = (json.decode(resAnnas.body) as Map<String, dynamic>)["ayat"];

  print(dataAnnas[5]);

  // changes raw data api to Models Surah
  // DetailSurah ayatAnnas = DetailSurah.fromJson(dataAnnas[5]);
  // print(ayatAnnas);
}
