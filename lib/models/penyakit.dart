import 'package:json_annotation/json_annotation.dart';
import 'package:sistem_pakar/models/penanganan.dart';

part 'penyakit.g.dart';

@JsonSerializable()
class Penyakit {
  String? id;
  String? name;
  String? description;
  String? gejala;
  List<Penanganan>? penanganan;

  Penyakit({
    this.id,
    this.name,
    this.description,
    this.gejala,
    this.penanganan,
  });

  Penyakit copyWith({
    String? id,
    String? name,
    String? descrition,
    String? gejala,
    List<Penanganan>? penanganan,
  }) =>
      Penyakit(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        gejala: gejala ?? this.gejala,
        penanganan: penanganan ?? this.penanganan,
      );

  factory Penyakit.fromJson(Map<String, dynamic> json) =>
      _$PenyakitFromJson(json);
  Map<String, dynamic> toJson() => _$PenyakitToJson(this);
}
