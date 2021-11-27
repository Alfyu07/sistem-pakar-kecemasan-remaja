import 'package:json_annotation/json_annotation.dart';

part 'penanganan.g.dart';

@JsonSerializable()
class Penanganan {
  String? id;
  String? idPenyakit;
  String? name;
  Penanganan({this.id, this.idPenyakit, this.name});

  factory Penanganan.fromJson(Map<String, dynamic> json) =>
      _$PenangananFromJson(json);
  Map<String, dynamic> toJson() => _$PenangananToJson(this);
}

List<Penanganan> dummyPenanganan = [
  Penanganan(
      id: "1",
      idPenyakit: "2",
      name:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque consectetur tempus, mattis odio purus convallis")
];
