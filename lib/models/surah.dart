import 'package:equatable/equatable.dart';

class AllSurah {
  final List<Surah>? allSurah;
  AllSurah({this.allSurah});
  factory AllSurah.fromJSON(List<Map<String, dynamic>> json) {
    Iterable surahs = json;
    List<Surah> surahList = surahs.map((e) =>  Surah.fromJSON((e))).toList();
    return AllSurah(allSurah: surahList);
  }
}
class Surah extends Equatable {
  final int? number;
  final String? name;
  final int? aya;
  final String? english;
  final String? place;
  final String? arabic;

  Surah({this.number, this.name, this.aya, this.english, this.place,this.arabic});
  factory Surah.fromJSON(Map<String, dynamic> json) {
    return Surah(
        name: json['name'],
        number: json['id'],
        aya: json['aya'],
        english: json['english'],
        place: json['place'],
        arabic: json['arabic']
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [this.name,this.number];

  @override
  // TODO: implement stringify
  bool? get stringify => true;
}
