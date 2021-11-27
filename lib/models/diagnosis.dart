import 'package:json_annotation/json_annotation.dart';

part 'diagnosis.g.dart';

@JsonSerializable()
class Diagnosis {
  String? id;
  List<String?>? namaPenyakit;
  double? bobot;
  List<String?>? saranPenanganan;

  Diagnosis({this.id, this.namaPenyakit, this.bobot, this.saranPenanganan});

  factory Diagnosis.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$DiagnosisToJson(this);
}

Diagnosis dummyDiagnosis = Diagnosis(
  id: "1",
  namaPenyakit: ["Cemas disorder"],
  bobot: 0.99,
  saranPenanganan: ["Makan yang teratur", "Kuatkan iman", "Cari pacar"],
);
