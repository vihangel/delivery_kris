// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$dataAtom = Atom(name: '_HomeControllerBase.data');

  @override
  List<TopicModel> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(List<TopicModel> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$loadJsonDataAsyncAction =
      AsyncAction('_HomeControllerBase.loadJsonData');

  @override
  Future<void> loadJsonData() {
    return _$loadJsonDataAsyncAction.run(() => super.loadJsonData());
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
