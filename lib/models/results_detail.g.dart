// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsDetail _$ResultsDetailFromJson(Map<String, dynamic> json) =>
    ResultsDetail(
      kode: json['kode_case'] as String?,
      name: json['name'] as String?,
      hasil: json['hasil_perhitungan'] as double?,
    );

Map<String, dynamic> _$ResultsDetailToJson(ResultsDetail instance) =>
    <String, dynamic>{
      'kode': instance.kode,
      'name': instance.name,
      'hasil': instance.hasil,
    };
