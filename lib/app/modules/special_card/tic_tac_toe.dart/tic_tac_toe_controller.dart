import 'package:mobx/mobx.dart';

part 'tic_tac_toe_controller.g.dart';

class TicTacToeController = _TicTacToeControllerBase with _$TicTacToeController;

abstract class _TicTacToeControllerBase with Store {
  @observable
  int player = 1;

  @observable
  String state = "";

  @observable
  bool pcGamer = true;

  @observable
  String messageWinner = "";

  @observable
  List<int> selected = ObservableList.of([0, 0, 0, 0, 0, 0, 0, 0, 0]);

  @action
  setPlayer() {
    reset();
    return pcGamer = !pcGamer;
  }

  @action
  played(index) async {
    if (selected[index] == 0) {
      selected[index] = player;
      player == 1 ? player = 4 : player = 1;
    }
    !selected.contains(0) ? state = "end" : null;
    pcGamer ? pcPlayer() : null;
    validate();
  }

  @action
  reset() {
    player = 1;
    state = "";
    selected = ObservableList.of([0, 0, 0, 0, 0, 0, 0, 0, 0]);
    messageWinner = "";
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
        player = 4;
        messageWinner = "Na pr??xima eu deixo voc?? ganhar!";
      } else {
        player = 1;
        messageWinner = "Na arte da conquista, voc?? ganhou do meu cora????o! ????";
      }
    }
  }

  @action
  pcPlayer() {
    if (!selected.contains(4)) {
      if (selected[0] == 1 ||
          selected[2] == 1 ||
          selected[6] == 1 ||
          selected[8] == 1) {
        selected[4] = player;
        player == 1 ? player = 4 : player = 1;
      }
    }
    playRow();

    playColumn();

    playMiddle();

    playRandom();
    !selected.contains(0) ? state = "end" : null;
    validate();
  }

  playRow() {
    if (player == 4) {
      for (var j = 0; j < 3; j++) {
        int flag = 0;
        for (var i = 0; i < 3; i++) {
          if (selected[(i + 3 * j)] == 4) {
            flag -= 4;
          } else if (selected[(i + 3 * j)] == 1) {
            flag += 1;
          }

          if (flag > 1 && i > 2) {
            print("Linha fechada");
            if (selected[(0 + 3 * i)] == 0) {
              selected[(0 + 3 * i)] = 4;
            } else if (selected[(1 + 3 * j)] == 0) {
              selected[(1 + 3 * j)] = 4;
            } else if (selected[(2 + 3 * j)] == 0) {
              selected[(2 + 3 * j)] = 4;
            }

            player == 1 ? player = 4 : player = 1;
          }
        }
      }
    }
  }

  playColumn() {
    if (player == 4) {
      for (var j = 0; j < 3; j++) {
        int flag = 0;
        for (var i = 0; i < 3; i++) {
          if (selected[(j + 3 * i)] == 4) {
            flag -= 4;
          } else if (selected[(j + 3 * i)] == 1) {
            flag += 1;
          }
          if (flag > 1 && i > 2) {
            if (selected[(j + 3 * 0)] == 0) {
              selected[(j + 3 * 0)] = 4;
            } else if (selected[(j + 3 * 1)] == 0) {
              selected[(j + 3 * 1)] = 4;
            } else if (selected[(j + 3 * 2)] == 0) {
              selected[(j + 3 * 2)] = 4;
            }
            player == 1 ? player = 4 : player = 1;
          }
        }
      }
    }
  }

  playMiddle() {
    if (player == 4) {
      List list = [selected[0], selected[4], selected[8]];
      if (list.reduce((a, b) => a + b) == 2) {
        if (selected[0] == 0) {
          selected[0] = 4;
        }
        if (selected[4] == 0) {
          selected[4] = 4;
        }
        if (selected[8] == 0) {
          selected[8] = 4;
        }
        player == 1 ? player = 4 : player = 1;
      }

      list = [selected[2], selected[4], selected[6]];
      if (list.reduce((a, b) => a + b) == 2) {
        if (selected[2] == 0) {
          selected[2] = 4;
        }
        if (selected[4] == 0) {
          selected[4] = 4;
        }
        if (selected[6] == 0) {
          selected[6] = 4;
        }
        player == 1 ? player = 4 : player = 1;
      }
    }
  }

  playRandom() {
    if (player == 4) {
      for (var j = 0; j < 3; j++) {
        for (var i = 0; i < 3; i++) {
          if (selected[j + 3 * i] == 0 && player == 4) {
            selected[j + 3 * i] = 4;
            player == 1 ? player = 4 : player = 1;
          }
        }
      }
    }
  }
}
