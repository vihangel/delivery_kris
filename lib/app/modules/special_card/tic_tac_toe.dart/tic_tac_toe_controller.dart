import 'package:mobx/mobx.dart';

part 'tic_tac_toe_controller.g.dart';

class TicTacToeController = _TicTacToeControllerBase with _$TicTacToeController;

abstract class _TicTacToeControllerBase with Store {
  @observable
  int player = 1;

  @observable
  String state = "";

  @observable
  String messageWinner = "";

  @observable
  List<int> selected = ObservableList.of([0, 0, 0, 0, 0, 0, 0, 0, 0]);

  @action
  played(index) async {
    if (selected[index] == 0) {
      selected[index] = player;
      player == 1 ? player = 2 : player = 1;
    }
    !selected.contains(0) ? state = "end" : null;
    validate();
  }

  @action
  reset() {
    player = 1;
    state = "";
    selected = ObservableList.of([0, 0, 0, 0, 0, 0, 0, 0, 0]);
  }

  @action
  validate() {
    if (selected[0] == selected[1] &&
        selected[1] == selected[2] &&
        selected[0] != 0) {
      state = "end";
    }
    if (selected[3] == selected[4] &&
        selected[4] == selected[5] &&
        selected[3] != 0) {
      state = "end";
    }
    if (selected[6] == selected[7] &&
        selected[7] == selected[8] &&
        selected[6] != 0) {
      state = "end";
    }
    if (selected[0] == selected[3] &&
        selected[3] == selected[6] &&
        selected[0] != 0) {
      state = "end";
    }
    if (selected[1] == selected[4] &&
        selected[4] == selected[7] &&
        selected[1] != 0) {
      state = "end";
    }
    if (selected[2] == selected[5] &&
        selected[5] == selected[8] &&
        selected[2] != 0) {
      state = "end";
    }
    if (selected[0] == selected[4] &&
        selected[4] == selected[8] &&
        selected[0] != 0) {
      state = "end";
    }
    if (selected[2] == selected[4] &&
        selected[4] == selected[6] &&
        selected[2] != 0) {
      state = "end";
    }
    if (state == "end") {
      if (player == 1) {
        player = 2;
      } else {
        player = 1;
        messageWinner = "Você ganhou do meu coração!";
      }
    }
  }

  @action
  pcPlayer() {
    //jogadas aleatorias
    if (selected[0] == 0) {
      selected[0] = player;
      player == 1 ? player = 2 : player = 1;
    }
    if (selected[1] == 0) {
      selected[1] = player;
      player == 1 ? player = 2 : player = 1;
    }
    if (selected[2] == 0) {
      selected[2] = player;
      player == 1 ? player = 2 : player = 1;
    }
    if (selected[3] == 0) {
      selected[3] = player;
      player == 1 ? player = 2 : player = 1;
    }
    if (selected[4] == 0) {
      selected[4] = player;
      player == 1 ? player = 2 : player = 1;
    }
    if (selected[5] == 0) {
      selected[5] = player;
      player == 1 ? player = 2 : player = 1;
    }
    if (selected[6] == 0) {
      selected[6] = player;
      player == 1 ? player = 2 : player = 1;
    }
    if (selected[7] == 0) {
      selected[7] = player;
      player == 1 ? player = 2 : player = 1;
    }
    if (selected[8] == 0) {
      selected[8] = player;
      player == 1 ? player = 2 : player = 1;
    }
    !selected.contains(0) ? state = "end" : null;
    validate();
  }
}
