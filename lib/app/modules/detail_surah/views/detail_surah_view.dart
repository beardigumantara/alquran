import 'package:alquran/data/models/surah.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_surah_controller.dart';

class DetailSurahView extends GetView<DetailSurahController> {
  final Surah surah = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Q.S ${surah.name?.transliteration?.id ?? 'Error..'}'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Card(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Q.S ${surah.name?.transliteration?.id ?? 'Error..'}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '(${surah.name?.translation?.id ?? 'Error..'})',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '${surah.numberOfVerses ?? 'Error..'} Ayat | ${surah.revelation?.id}',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
