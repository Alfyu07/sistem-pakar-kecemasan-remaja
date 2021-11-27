// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pakar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pakar _$PakarFromJson(Map<String, dynamic> json) => Pakar(
      id: json['id'] as int?,
      name: json['name'] as String?,
      imgUrl: json['imgUrl'] as String?,
      pekerjaan: json['pekerjaan'] as String?,
      tempatKerja: json['tempatKerja'] as String?,
      bobotPakar: (json['bobotPakar'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PakarToJson(Pakar instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imgUrl': instance.imgUrl,
      'pekerjaan': instance.pekerjaan,
      'tempatKerja': instance.tempatKerja,
      'bobotPakar': instance.bobotPakar,
    };
