import 'package:delivery_kris/app/data/models/topic/topic_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'all_data_model.g.dart';

@JsonSerializable()
class AllDataModel {
  List<TopicModel>? topic;

  AllDataModel({
    this.topic,
  });

  factory AllDataModel.fromJson(Map<String, dynamic> json) =>
      _$AllDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$AllDataModelToJson(this);
}
