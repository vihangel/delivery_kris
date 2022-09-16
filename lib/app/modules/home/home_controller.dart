import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';

import '../../data/models/all_data/all_data_model.dart';
import '../../data/models/story/story_icon_model.dart';
import '../../data/models/topic/topic_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  List<TopicModel> data = ObservableList();

  @action
  Future<void> loadJsonData() async {
    try {
      var jsonText = await rootBundle.loadString('assets/json/data.json');
      final dataMap = jsonDecode(jsonText);
      final response = AllDataModel.fromJson(dataMap[0]);
      for (var element in response.allData!) {
        data.add(element);
      }
      print(data[0].infos![0].title);
    } catch (e) {
      print(e);
    }
  }
}
