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

  final _$stateAtom = Atom(name: '_TicTacToeControllerBase.state');

  @override
  String get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(String value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$messageWinnerAtom =
      Atom(name: '_TicTacToeControllerBase.messageWinner');

  @override
  String get messageWinner {
    _$messageWinnerAtom.reportRead();
    return super.messageWinner;
  }

  @override
  set messageWinner(String value) {
    _$messageWinnerAtom.reportWrite(value, super.messageWinner, () {
      super.messageWinner = value;
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

  final _$_TicTacToeControllerBaseActionController =
      ActionController(name: '_TicTacToeControllerBase');

  @override
  dynamic reset() {
    final _$actionInfo = _$_TicTacToeControllerBaseActionController.startAction(
        name: '_TicTacToeControllerBase.reset');
    try {
      return super.reset();
    } finally {
      _$_TicTacToeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validate() {
    final _$actionInfo = _$_TicTacToeControllerBaseActionController.startAction(
        name: '_TicTacToeControllerBase.validate');
    try {
      return super.validate();
    } finally {
      _$_TicTacToeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic pcPlayer() {
    final _$actionInfo = _$_TicTacToeControllerBaseActionController.startAction(
        name: '_TicTacToeControllerBase.pcPlayer');
    try {
      return super.pcPlayer();
    } finally {
      _$_TicTacToeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
player: ${player},
state: ${state},
messageWinner: ${messageWinner},
selected: ${selected}
    ''';
  }
}
