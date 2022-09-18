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

  @observable
  Duration? duration;

  @action
  onChangeSlider(value) async {
    print(value);
    positionSlider = value;
    players
        .seek(Duration(seconds: int.parse(positionSlider.round().toString())));
    // int result = await players.seek(Duration(milliseconds: seekval));
    // if (result == 1) {
    //   //seek successful
    //   currentpos = seekval;
    // } else {
    //   print("Seek unsuccessful.");
    // }
  }
}
