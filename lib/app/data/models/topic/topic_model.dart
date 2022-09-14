import 'package:delivery_kris/app/data/models/information/information_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'topic_model.g.dart';

@JsonSerializable()
class TopicModel {
  final String? title;

  final String? subTitle;

  final String? icon;
  final InformationModel? information;

  TopicModel({
    this.title,
    this.subTitle,
    this.icon,
    this.information,
  });

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);
  Map<String, dynamic> toJson() => _$TopicModelToJson(this);
}
