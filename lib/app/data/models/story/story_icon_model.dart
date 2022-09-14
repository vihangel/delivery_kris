import 'package:json_annotation/json_annotation.dart';

part 'story_icon_model.g.dart';

@JsonSerializable()
class StoryIconModel {
  final String? title;

  final String? subtitle;

  final String? img;

  StoryIconModel({
    this.title,
    this.subtitle,
    this.img,
  });

  factory StoryIconModel.fromJson(Map<String, dynamic> json) =>
      _$StoryIconModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoryIconModelToJson(this);
}
