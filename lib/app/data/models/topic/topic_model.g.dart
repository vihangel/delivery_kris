// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopicModel _$TopicModelFromJson(Map<String, dynamic> json) => TopicModel(
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
      icon: json['icon'] as String?,
      information: json['information'] == null
          ? null
          : InformationModel.fromJson(
              json['information'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopicModelToJson(TopicModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'icon': instance.icon,
      'information': instance.information,
    };
