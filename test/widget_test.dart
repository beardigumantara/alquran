import 'package:alquran/data/models/ayat.dart';
import 'package:alquran/data/models/detail_surah.dart';
import 'package:alquran/data/models/surah.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri url = Uri.parse("https://api.quran.gading.dev/surah");

  var res = await http.get(url);
  List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

  // 1-114 -> index of 1113 = an-nas
  // print(data[113]);

  // changes raw data api to Models Surah
  Surah surahAnnas = Surah.fromJson(data[113]);

  print(surahAnnas.name);
  print(surahAnnas.number);
  print(surahAnnas.numberOfVerses);
  print(surahAnnas.revelation);
  print(surahAnnas.sequence);
  print(surahAnnas.tafsir);

  Uri urlAnnas =
      Uri.parse("https://api.quran.gading.dev/surah/${surahAnnas.number}");

  var resAnnas = await http.get(urlAnnas);
  Map<String, dynamic> dataAnnas =
      (json.decode(resAnnas.body) as Map<String, dynamic>)["data"];

  // print(dataAnnas[5]);

  // changes raw data api to Models Surah
  DetailSurah annas = DetailSurah.fromJson(dataAnnas);
  print(annas.verses![5].text!.arab);

  //deatil ayat
  Uri urlAyat =
      Uri.parse("https://api.quran.gading.dev/surah/${surahAnnas.number}/1");
  var resAyat = await http.get(urlAyat);
  Map<String, dynamic> dataAyat =
      (json.decode(resAnnas.body) as Map<String, dynamic>)["data"];
  Map<String, dynamic> dataAyatToModel = {
    "number": dataAyat["number"],
    "meta": dataAyat["meta"],
    "text": dataAyat["text"],
    "translation": dataAyat["translation"],
    "audio": dataAyat["audio"],
    "tafsir": dataAyat["tafsir"],
  };

  Ayat ayat = Ayat.fromJson(dataAyatToModel);
}
