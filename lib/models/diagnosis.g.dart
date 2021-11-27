// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Diagnosis _$DiagnosisFromJson(Map<String, dynamic> json) => Diagnosis(
      id: json['id'] as String?,
      namaPenyakit: (json['nama_penyakit'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      bobot: (json['bobot'] as num?)?.toDouble(),
      saranPenanganan: (json['saran_penanganan'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$DiagnosisToJson(Diagnosis instance) => <String, dynamic>{
      'id': instance.id,
      'nama_penyakit': instance.namaPenyakit,
      'bobot': instance.bobot,
      'saran_penanganan': instance.saranPenanganan,
    };
