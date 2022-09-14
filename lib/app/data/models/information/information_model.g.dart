// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InformationModel _$InformationModelFromJson(Map<String, dynamic> json) =>
    InformationModel(
      text: json['text'] as String?,
      img: (json['img'] as List<dynamic>?)?.map((e) => e as String).toList(),
      voice: json['voice'] as String?,
    );

Map<String, dynamic> _$InformationModelToJson(InformationModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'img': instance.img,
      'voice': instance.voice,
    };
