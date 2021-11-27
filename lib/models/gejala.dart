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

List<Gejala> gejalaDummy = [
  Gejala(id: 1, idPenyakit: [1, 2], name: "Susah tidur", bobotPakar: 0.3),
  Gejala(id: 2, idPenyakit: [1, 2], name: "Mimpi buruk", bobotPakar: 0.2),
  Gejala(
      id: 3, idPenyakit: [1, 2], name: "Hilang nafsu makan", bobotPakar: 0.4),
  Gejala(
      id: 4, idPenyakit: [1, 2], name: "Galau berkelanjutan", bobotPakar: 0.3),
  Gejala(
      id: 5, idPenyakit: [1, 2], name: "Merasa tidak berguna", bobotPakar: 0.3),
  Gejala(
      id: 6,
      idPenyakit: [1, 2],
      name: "Merasa tidak memiliki teman",
      bobotPakar: 0.3),
  Gejala(
      id: 7,
      idPenyakit: [1, 2],
      name: "Merasa selalu sendirian",
      bobotPakar: 0.2),
  Gejala(
      id: 8,
      idPenyakit: [1, 2],
      name: "Merasa semua tidak baik baik saja",
      bobotPakar: 0.3),
  Gejala(id: 9, idPenyakit: [1, 2], name: "Merasa tertinggal", bobotPakar: 0.2),
  Gejala(
      id: 10,
      idPenyakit: [1, 2],
      name: "Merasa selalu sendirian",
      bobotPakar: 0.2),
  Gejala(
      id: 11,
      idPenyakit: [1, 2],
      name: "Merasa semua tidak baik baik saja",
      bobotPakar: 0.3),
  Gejala(
      id: 12, idPenyakit: [1, 2], name: "Merasa tertinggal", bobotPakar: 0.2),
];
