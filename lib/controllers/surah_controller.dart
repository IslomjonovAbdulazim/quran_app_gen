import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/surah_model.dart';

class SurahController {
  List<SurahModel> surah = [];

  Future<void> loadData() async {
    String data = await rootBundle.loadString("assets/ayah.json");
    List listJson = List.from(jsonDecode(data));
    surah = listJson.map((json) => SurahModel.fromJson(json)).toList();
  }
}
