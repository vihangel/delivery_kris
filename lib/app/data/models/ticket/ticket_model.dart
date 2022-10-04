import 'package:json_annotation/json_annotation.dart';

part 'ticket_model.g.dart';

@JsonSerializable()
class TicketModel {
  final String? title;

  @JsonKey(name: "sub_title")
  final String? subTitle;

  final int? value;

  TicketModel({
    this.value,
    this.title,
    this.subTitle,
  });

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);
  Map<String, dynamic> toJson() => _$TicketModelToJson(this);
}
