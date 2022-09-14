// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllDataModel _$AllDataModelFromJson(Map<String, dynamic> json) => AllDataModel(
      topic: (json['topic'] as List<dynamic>?)
          ?.map((e) => TopicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllDataModelToJson(AllDataModel instance) =>
    <String, dynamic>{
      'topic': instance.topic,
    };
