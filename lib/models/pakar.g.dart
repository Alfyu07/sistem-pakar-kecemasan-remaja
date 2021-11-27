// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pakar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pakar _$PakarFromJson(Map<String, dynamic> json) => Pakar(
      id: json['id'] as int?,
      name: json['name'],
      bobotPakar: (json['bobot_pakar'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PakarToJson(Pakar instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bobotPakar': instance.bobotPakar,
    };
