// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'penyakit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Penyakit _$PenyakitFromJson(Map<String, dynamic> json) => Penyakit(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['deskripsi'] as String?,
      gejala: json['gejala'] as String?,
      penanganan: (json['penanganan'] as List<dynamic>?)
          ?.map((e) => Penanganan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PenyakitToJson(Penyakit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'gejala': instance.gejala,
      'penanganan': instance.penanganan,
    };
