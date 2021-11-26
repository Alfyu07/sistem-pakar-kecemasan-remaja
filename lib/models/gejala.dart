import 'package:json_annotation/json_annotation.dart';

part 'gejala.g.dart';

@JsonSerializable()
class Gejala {
  int? id;
  List<int>? idPenyakit;
  String? name;
  double? bobotPakar;
  double? bobotUser;
  bool? checked = false;

  Gejala(
      {this.id,
      this.idPenyakit,
      this.name,
      this.bobotPakar,
      this.bobotUser,
      this.checked});

  factory Gejala.fromJson(Map<String, dynamic> json) => _$GejalaFromJson(json);
  Map<String, dynamic> toJson() => _$GejalaToJson(this);
}
