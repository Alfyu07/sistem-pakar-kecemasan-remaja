// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      penyakit: json['hasil_pakar'] as Penyakit,
      resultDetail: (json['list_case'] as List<dynamic>?)
          ?.map((e) => ResultsDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'penyakit': instance.penyakit,
      'resultDetail': instance.resultDetail,
    };
