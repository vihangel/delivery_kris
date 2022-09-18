import 'package:audioplayers/audioplayers.dart';
import 'package:mobx/mobx.dart';

part 'story_controller.g.dart';

class StoryController = _StoryControllerBase with _$StoryController;

abstract class _StoryControllerBase with Store {
  // @observable
  // List<TopicModel> data = ObservableList();
  @observable
  double positionSlider = 0;

  @observable
  bool isPaused = false;

  @observable
  double playBack = 1.0;

  @action
  setPlayback(AudioPlayer players) async {
    playBack += 0.5;
    if (playBack > 3.0) {
      playBack = 0.5;
    }
    players.setPlaybackRate(playBack);
  }

  @action
  getPosition(players) async {
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
  onChangeSlider(double value, AudioPlayer players) async {
    print(value);
    positionSlider = value.roundToDouble();
    players
        .seek(Duration(seconds: int.parse(positionSlider.round().toString())));
  }
}
