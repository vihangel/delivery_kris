import 'package:audioplayers/audioplayers.dart';
import 'package:mobx/mobx.dart';

part 'story_controller.g.dart';

class StoryController = _StoryControllerBase with _$StoryController;

abstract class _StoryControllerBase with Store {
  AudioPlayer players = AudioPlayer();

  // @observable
  // List<TopicModel> data = ObservableList();
  @observable
  double positionSlider = 0;

  @observable
  bool isPaused = false;

  @action
  getPosition() async {
    final time = await players.getCurrentPosition();
    positionSlider = time!.inSeconds.toDouble();
  }

  @observable
  Duration? duration;

  @action
  String label() {
    String label = '';
    if (positionSlider < 60) {
      label = '00:${positionSlider.toInt()}s';
    } else {
      label =
          '${(positionSlider ~/ 60).toInt()}:${(positionSlider % 60).toInt()}s';
    }

    return label;
  }

  @action
  onChangeSlider(value) async {
    print(value);
    positionSlider = value;
    players
        .seek(Duration(seconds: int.parse(positionSlider.round().toString())));
  }
}
