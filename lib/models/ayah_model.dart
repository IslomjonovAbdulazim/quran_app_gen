class AyahModel {
  late int chapter;
  late int verse;
  late String text;

  AyahModel({
    required this.chapter,
    required this.verse,
    required this.text,
  });

  AyahModel.fromJson(Map json) {
    chapter = json["chapter"];
    verse = json["verse"];
    text = json["text"];
  }

  Map toJson() {
    return {
      "chapter": chapter,
      "verse": verse,
      "text": text,
    };
  }
}
