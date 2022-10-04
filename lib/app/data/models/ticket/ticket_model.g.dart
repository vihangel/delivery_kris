// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) => TicketModel(
      value: json['value'] as int?,
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
    );

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sub_title': instance.subTitle,
      'value': instance.value,
    };
