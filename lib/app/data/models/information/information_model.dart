import 'package:json_annotation/json_annotation.dart';

part 'information_model.g.dart';

@JsonSerializable()
class InformationModel {
  final String? text;

  final List<String>? img;

  final String? voice;

  InformationModel({
    this.text,
    this.img,
    this.voice,
  });

  factory InformationModel.fromJson(Map<String, dynamic> json) =>
      _$InformationModelFromJson(json);
  Map<String, dynamic> toJson() => _$InformationModelToJson(this);
}
