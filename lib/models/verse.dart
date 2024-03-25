class VerseInSurah{
  List<Verse>? verseInSurah;
  VerseInSurah({this.verseInSurah});
  factory VerseInSurah.fromList(List<Map<String, dynamic>> list)
  {
    Iterable verses = list;
    List<Verse> verseList = verses.map((e) =>  Verse.fromJSON((e))).toList();
    return VerseInSurah(verseInSurah: verseList);
  }
}
class Verse {
  final int? verse_number;
  final int? verse_number_in_quran;
  final int? surah_number;
  final String? content_english;
  final String? content_arabic;
  final String? content_bengali;
  final String? content_hindi;

  Verse({
    this.verse_number,
    this.verse_number_in_quran,
    this.content_arabic,
    this.content_bengali,
    this.content_english,
    this.content_hindi,
    this.surah_number
   });

factory Verse.fromJSON(Map<String, dynamic> json) {
  return Verse(
      verse_number: json['verse_number'],
      verse_number_in_quran: json['verse_number_in_quran'],
      content_arabic: json['content_arabic'],
      content_bengali: json['content_bengali'],
      content_english: json['content_english'],
      content_hindi: json['content_hindi'],
      surah_number: json['surah_number']
  );
}
}
