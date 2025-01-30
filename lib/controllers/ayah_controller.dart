import 'package:flutter/services.dart';

import '../models/ayah_model.dart';

class AyahController {
  List<AyahModel> ayahs = [];

  Future<void> loadData() async {
    String data = await rootBundle.loadString("assets/surah.json");
  }
}
