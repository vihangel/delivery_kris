// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopicModel _$TopicModelFromJson(Map<String, dynamic> json) => TopicModel(
      topic: json['topic'] as String?,
      infos: (json['infos'] as List<dynamic>?)
          ?.map((e) => StoryIconModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopicModelToJson(TopicModel instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'infos': instance.infos,
    };
