import 'package:json_annotation/json_annotation.dart';
import 'package:sistem_pakar/models/penanganan.dart';
import 'package:sistem_pakar/models/penyakit.dart';
import 'package:sistem_pakar/models/results_detail.dart';

part 'results.g.dart';

@JsonSerializable()
class Results {
  Penyakit penyakit;
  List<ResultsDetail>? resultDetail;

  Results({
    required this.penyakit,
    this.resultDetail,
  });

  Results copyWith({
    required Penyakit penyakit,
    List<ResultsDetail>? resultDetail,
  }) =>
      Results(
        penyakit: penyakit,
        resultDetail: resultDetail ?? this.resultDetail,
      );

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
