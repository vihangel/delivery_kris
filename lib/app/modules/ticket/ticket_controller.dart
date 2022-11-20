import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

import '../../data/models/ticket/ticket_model.dart';

part 'ticket_controller.g.dart';

class TicketController = _TicketControllerBase with _$TicketController;

abstract class _TicketControllerBase with Store {
  // @observable
  // List<TopicModel> data = ObservableList();
  @observable
  bool loading = true;

  @observable
  List<TicketModel> tickets = ObservableList();

  @action
  Future<void> loadJsonData() async {
    loading = true;
    try {
      tickets.clear();
      final jsonText = await rootBundle.loadString('assets/json/ticket.json');
      final dataMap = await jsonDecode(jsonText);

      for (var element in dataMap[0]["tickets"]) {
        final ticket = TicketModel(
            title: element['title'],
            subTitle: element['sub_title'],
            value: element['value']);
        tickets.add(ticket);
      }
      loading = false;
    } catch (e) {
      print(e);
    }
  }
}
