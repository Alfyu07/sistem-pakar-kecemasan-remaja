import 'package:json_annotation/json_annotation.dart';

part 'penanganan.g.dart';

@JsonSerializable()
class Penanganan {
  int? id;
  String? idPenyakit;
  String? name;
  Penanganan({this.id, this.idPenyakit, this.name});

  factory Penanganan.fromJson(Map<String, dynamic> json) =>
      _$PenangananFromJson(json);
  Map<String, dynamic> toJson() => _$PenangananToJson(this);
}
