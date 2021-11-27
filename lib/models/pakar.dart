import 'package:json_annotation/json_annotation.dart';
part 'pakar.g.dart';

@JsonSerializable()
class Pakar {
  int? id;
  String name;
  double? bobotPakar;

  Pakar({this.id, required this.name, this.bobotPakar});
  factory Pakar.fromJson(Map<String, dynamic> json) => _$PakarFromJson(json);
  Map<String, dynamic> toJson() => _$PakarToJson(this);
}

List<Pakar> pakarDummy = [
  Pakar(id: 1, name: "Pakar A", bobotPakar: 0.1),
  Pakar(id: 2, name: "Pakar B", bobotPakar: 0.3),
  Pakar(id: 3, name: "Pakar C", bobotPakar: 0.4),
];
