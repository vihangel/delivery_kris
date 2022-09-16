// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_icon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryIconModel _$StoryIconModelFromJson(Map<String, dynamic> json) =>
    StoryIconModel(
      json['information'] == null
          ? null
          : InformationModel.fromJson(
              json['information'] as Map<String, dynamic>),
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$StoryIconModelToJson(StoryIconModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sub_title': instance.subTitle,
      'icon': instance.icon,
      'information': instance.information,
    };
