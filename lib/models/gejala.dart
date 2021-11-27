import 'package:json_annotation/json_annotation.dart';

part 'gejala.g.dart';

@JsonSerializable()
class Gejala {
  int id;
  int pakar_id;
  List<int>? idPenyakit;
  String? name;
  double? bobotPakar;
  double? bobotUser;
  bool? checked = false;

  Gejala(
      {required this.id,
      required this.pakar_id,
      this.idPenyakit,
      this.name,
      this.bobotPakar,
      this.bobotUser,
      this.checked});

  factory Gejala.fromJson(Map<String, dynamic> json) => _$GejalaFromJson(json);
  Map<String, dynamic> toJson() => _$GejalaToJson(this);
}

// List<Gejala> gejalaDummy = [
//   Gejala(id: 1, idPenyakit: [1, 2], name: "Susah tidur", bobotPakar: 0.3),
//   Gejala(id: 2, idPenyakit: [1, 2], name: "Mimpi buruk", bobotPakar: 0.2),
//   Gejala(
//       id: 3, idPenyakit: [1, 2], name: "Hilang nafsu makan", bobotPakar: 0.4),
//   Gejala(
//       id: 4, idPenyakit: [1, 2], name: "Galau berkelanjutan", bobotPakar: 0.3),
//   Gejala(
//       id: 5, idPenyakit: [1, 2], name: "Merasa tidak berguna", bobotPakar: 0.3),
//   Gejala(
//       id: 6,
//       idPenyakit: [1, 2],
//       name: "Merasa tidak memiliki teman",
//       bobotPakar: 0.3),
//   Gejala(
//       id: 7,
//       idPenyakit: [1, 2],
//       name: "Merasa selalu sendirian",
//       bobotPakar: 0.2),
//   Gejala(
//     id: 8,
//     idPenyakit: [1, 2],
//     name: "Merasa semua tidak baik baik saja",
//     bobotPakar: 0.3,
//   ),
//   Gejala(id: 9, idPenyakit: [1, 2], name: "Merasa tertinggal", bobotPakar: 0.2),
//   Gejala(
//       id: 10, idPenyakit: [1, 2], name: "Merasa kurang dana", bobotPakar: 0.2),
//   Gejala(
//       id: 11,
//       idPenyakit: [1, 2],
//       name: "Merasa tidak dihiraukan",
//       bobotPakar: 0.3),
//   Gejala(
//       id: 12, idPenyakit: [1, 2], name: "Merasa tertinggal", bobotPakar: 0.2),
// ];




//  [
//    {
//      "id":1,
//      "pakar_id":1,
//      "inputan":[1,2,3,4,5],
//      "name":"Kecemasan dan kekhawatiran yang berlebihan",
//      "bobotPakar":null,
//      "bobotUser":1.0,
//      "checked":true
//      },
//      {"id":2,"pakar_id":1,"idPenyakit":[6,7,8,9],"name":"Jantung berdebar-debar","bobotPakar":null,"bobotUser":0.6,"checked":true},
//      {"id":3,"pakar_id":1,"idPenyakit":[10,11,12,13],"name":"Berkeringan berlebihan","bobotPakar":null,"bobotUser":0.4,"checked":true},
//      {"id":4,"pakar_id":1,"idPenyakit":[14,15,16],"name":"Bagian tubuh menjadi gemetaran","bobotPakar":null,"bobotUser":0.8,"checked":true},
//      {"id":5,"pakar_id":1,"idPenyakit":[17,18],"name":"Kesulitan dalam berkonsentrasi","bobotPakar":null,"bobotUser":0.4,"checked":true}
     
// ]