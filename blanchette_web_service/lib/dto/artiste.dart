import 'package:json_annotation/json_annotation.dart';

part 'artiste.g.dart';

@JsonSerializable()
class Artiste{
  Artiste();
  late int id;
  late String titre;

  factory Artiste.fromJson(Map<String,dynamic> json)=> _$ArtisteFromJson(json);

  Map<String, dynamic> toJson()=> _$ArtisteToJson(this);
}
