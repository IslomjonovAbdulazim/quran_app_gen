class VerseModel {
  late int chapter;
  late int verse;
  late String text;

  VerseModel({
    required this.chapter,
    required this.verse,
    required this.text,
  });

  VerseModel.fromJson(Map json) {
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
