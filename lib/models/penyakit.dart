import 'package:json_annotation/json_annotation.dart';
import 'package:sistem_pakar/models/gejala.dart';
import 'package:sistem_pakar/models/penanganan.dart';

part 'penyakit.g.dart';

@JsonSerializable()
class Penyakit {
  int? id;
  String? name;
  String? description;
  String? imgUrl;
  String? gejala;
  List<Penanganan>? penanganan;

  Penyakit({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.gejala,
    this.penanganan,
  });

  Penyakit copyWith({
    int? id,
    String? name,
    String? imgUrl,
    String? description,
    String? gejala,
    List<Penanganan>? penanganan,
  }) =>
      Penyakit(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        imgUrl: imgUrl ?? this.imgUrl,
        gejala: gejala ?? this.gejala,
        penanganan: penanganan ?? this.penanganan,
      );

  factory Penyakit.fromJson(Map<String, dynamic> json) =>
      _$PenyakitFromJson(json);
  Map<String, dynamic> toJson() => _$PenyakitToJson(this);
}

// List<Penyakit> dummyPenyakit = [
//   Penyakit(
//     id: "1",
//     name: "Cemas Disorder",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque consectetur tempus, mattis odio purus convallis. Ullamcorper ultrices ipsum luctus ut felis sit cursus ornare lobortis. Lorem lorem nibh purus amet, arcu et massa bibendum.",
//     imgUrl:
//         "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/anxiety-main-1576255998.jpg",
//     gejala:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque consectetur tempus, mattis odio purus convallis. ",
//     penanganan: [dummyPenanganan[0]],
//   ),
//   Penyakit(
//     id: "1",
//     name: "Cemas Disorder",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque consectetur tempus, mattis odio purus convallis. Ullamcorper ultrices ipsum luctus ut felis sit cursus ornare lobortis. Lorem lorem nibh purus amet, arcu et massa bibendum.",
//     imgUrl:
//         "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/anxiety-main-1576255998.jpg",
//     gejala:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque consectetur tempus, mattis odio purus convallis. ",
//     penanganan: [dummyPenanganan[0]],
//   ),
//   Penyakit(
//     id: "1",
//     name: "Cemas Disorder",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque consectetur tempus, mattis odio purus convallis. Ullamcorper ultrices ipsum luctus ut felis sit cursus ornare lobortis. Lorem lorem nibh purus amet, arcu et massa bibendum.",
//     imgUrl:
//         "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/anxiety-main-1576255998.jpg",
//     gejala:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque consectetur tempus, mattis odio purus convallis. ",
//     penanganan: [dummyPenanganan[0]],
//   )
// ];
