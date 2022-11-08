import 'package:mobx/mobx.dart';

part 'tic_tac_toe_controller.g.dart';

class TicTacToeController = _TicTacToeControllerBase with _$TicTacToeController;

abstract class _TicTacToeControllerBase with Store {
  @observable
  int player = 1;

  @observable
  List<int> selected = ObservableList.of([0, 0, 0, 0, 0, 0, 0, 0, 0]);

  @action
  played(index) async {
    if (selected[index] == 0) {
      selected[index] = player;
      player == 1 ? player = 2 : player = 1;
    }
  }
}
