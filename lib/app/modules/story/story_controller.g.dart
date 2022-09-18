// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoryController on _StoryControllerBase, Store {
  final _$positionSliderAtom =
      Atom(name: '_StoryControllerBase.positionSlider');

  @override
  double get positionSlider {
    _$positionSliderAtom.reportRead();
    return super.positionSlider;
  }

  @override
  set positionSlider(double value) {
    _$positionSliderAtom.reportWrite(value, super.positionSlider, () {
      super.positionSlider = value;
    });
  }

  final _$isPausedAtom = Atom(name: '_StoryControllerBase.isPaused');

  @override
  bool get isPaused {
    _$isPausedAtom.reportRead();
    return super.isPaused;
  }

  @override
  set isPaused(bool value) {
    _$isPausedAtom.reportWrite(value, super.isPaused, () {
      super.isPaused = value;
    });
  }

  final _$playBackAtom = Atom(name: '_StoryControllerBase.playBack');

  @override
  double get playBack {
    _$playBackAtom.reportRead();
    return super.playBack;
  }

  @override
  set playBack(double value) {
    _$playBackAtom.reportWrite(value, super.playBack, () {
      super.playBack = value;
    });
  }

  final _$durationAtom = Atom(name: '_StoryControllerBase.duration');

  @override
  Duration? get duration {
    _$durationAtom.reportRead();
    return super.duration;
  }

  @override
  set duration(Duration? value) {
    _$durationAtom.reportWrite(value, super.duration, () {
      super.duration = value;
    });
  }

  final _$setPlaybackAsyncAction =
      AsyncAction('_StoryControllerBase.setPlayback');

  @override
  Future setPlayback(AudioPlayer players) {
    return _$setPlaybackAsyncAction.run(() => super.setPlayback(players));
  }

  final _$getPositionAsyncAction =
      AsyncAction('_StoryControllerBase.getPosition');

  @override
  Future getPosition(dynamic players) {
    return _$getPositionAsyncAction.run(() => super.getPosition(players));
  }

  final _$onChangeSliderAsyncAction =
      AsyncAction('_StoryControllerBase.onChangeSlider');

  @override
  Future onChangeSlider(double value, AudioPlayer players) {
    return _$onChangeSliderAsyncAction
        .run(() => super.onChangeSlider(value, players));
  }

  final _$_StoryControllerBaseActionController =
      ActionController(name: '_StoryControllerBase');

  @override
  String label() {
    final _$actionInfo = _$_StoryControllerBaseActionController.startAction(
        name: '_StoryControllerBase.label');
    try {
      return super.label();
    } finally {
      _$_StoryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
positionSlider: ${positionSlider},
isPaused: ${isPaused},
playBack: ${playBack},
duration: ${duration}
    ''';
  }
}
