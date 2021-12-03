import 'package:json_annotation/json_annotation.dart';

part 'results_detail.g.dart';

@JsonSerializable()
class ResultsDetail {
  String? kode;
  String? name;
  double? hasil;

  ResultsDetail({
    this.kode,
    this.name,
    this.hasil,
  });

  ResultsDetail copyWith({
    String? kode,
    String? name,
    double? hasil,
  }) =>
      ResultsDetail(
        kode: kode ?? this.kode,
        name: name ?? this.name,
        hasil: hasil ?? this.hasil,
      );

  factory ResultsDetail.fromJson(Map<String, dynamic> json) =>
      _$ResultsDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsDetailToJson(this);
}
