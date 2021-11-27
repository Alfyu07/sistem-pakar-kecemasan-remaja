// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gejala.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gejala _$GejalaFromJson(Map<String, dynamic> json) => Gejala(
      id: json['id'] as int,
      pakar_id: json['pakar_id'] as int,
      idPenyakit:
          (json['penyakit'] as List<dynamic>?)?.map((e) => e as int).toList(),
      name: json['name'] as String?,
      bobotPakar: (json['bobotPakar'] as num?)?.toDouble(),
      bobotUser: (json['bobotUser'] as num?)?.toDouble(),
      checked: json['checked'] as bool?,
    );

Map<String, dynamic> _$GejalaToJson(Gejala instance) => <String, dynamic>{
      'id': instance.id,
      'pakar_id': instance.pakar_id,
      'idPenyakit': instance.idPenyakit,
      'name': instance.name,
      'bobotPakar': instance.bobotPakar,
      'bobotUser': instance.bobotUser,
      'checked': instance.checked,
    };
