import 'package:json_annotation/json_annotation.dart';

import '../story/story_icon_model.dart';

part 'topic_model.g.dart';

@JsonSerializable()
class TopicModel {
  final String? topic;

  final List<StoryIconModel>? infos;

  TopicModel({
    this.topic,
    this.infos,
  });

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);
  Map<String, dynamic> toJson() => _$TopicModelToJson(this);
}
