import 'dart:convert';
import 'package:alquran/data/models/surah.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //Get All Surah
  getAllSurah() async {
    Uri url = Uri.parse("https://api.quran.gading.dev/surah");

    var res = await http.get(url);
    List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

    Surah surahAnnas = Surah.fromJson(data[113]);
  }
}
