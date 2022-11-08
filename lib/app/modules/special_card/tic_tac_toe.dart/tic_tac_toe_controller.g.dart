// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tic_tac_toe_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TicTacToeController on _TicTacToeControllerBase, Store {
  final _$playerAtom = Atom(name: '_TicTacToeControllerBase.player');

  @override
  int get player {
    _$playerAtom.reportRead();
    return super.player;
  }

  @override
  set player(int value) {
    _$playerAtom.reportWrite(value, super.player, () {
      super.player = value;
    });
  }

  final _$selectedAtom = Atom(name: '_TicTacToeControllerBase.selected');

  @override
  List<int> get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(List<int> value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$playedAsyncAction = AsyncAction('_TicTacToeControllerBase.played');

  @override
  Future played(dynamic index) {
    return _$playedAsyncAction.run(() => super.played(index));
  }

  @override
  String toString() {
    return '''
player: ${player},
selected: ${selected}
    ''';
  }
}
