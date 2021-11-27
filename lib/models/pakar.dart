import 'package:json_annotation/json_annotation.dart';
part 'pakar.g.dart';

@JsonSerializable()
class Pakar {
  int? id;
  String? name;
  String? imgUrl;
  String? pekerjaan;
  String? tempatKerja;
  double? bobotPakar;

  Pakar({
    this.id,
    this.name,
    this.imgUrl,
    this.pekerjaan,
    this.tempatKerja,
    this.bobotPakar,
  });
  factory Pakar.fromJson(Map<String, dynamic> json) => _$PakarFromJson(json);
  Map<String, dynamic> toJson() => _$PakarToJson(this);
}

List<Pakar> pakarDummy = [
  Pakar(
      id: 1,
      name: "dr. Budiman Rabbani Ph. D",
      imgUrl:
          "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      pekerjaan: "Psikolog and Consultant ",
      tempatKerja: "Universitas Mataram",
      bobotPakar: 0.1),
  Pakar(
      id: 2,
      name: "dr. Wahyu Alfandi Psy.D",
      imgUrl:
          "https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
      pekerjaan: "Brain Doctor",
      tempatKerja: "Universitas Mataram",
      bobotPakar: 0.1),
  Pakar(
      id: 3,
      name: "dr. Mizanul Ridho Psy.D.",
      imgUrl:
          "https://images.unsplash.com/photo-1537368910025-700350fe46c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      pekerjaan: "Mind Consultant",
      tempatKerja: "Universitas Mataram",
      bobotPakar: 0.1),
];
