import 'package:json_annotation/json_annotation.dart';

import '../information/information_model.dart';

part 'story_icon_model.g.dart';

@JsonSerializable()
class StoryIconModel {
  final String? title;

  @JsonKey(name: "sub_title")
  final String? subTitle;

  final String? icon;

  final InformationModel? information;

  StoryIconModel(
    this.information, {
    this.title,
    this.subTitle,
    this.icon,
  });

  factory StoryIconModel.fromJson(Map<String, dynamic> json) =>
      _$StoryIconModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoryIconModelToJson(this);
}
