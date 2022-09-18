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

  final _$onChangeSliderAsyncAction =
      AsyncAction('_StoryControllerBase.onChangeSlider');

  @override
  Future onChangeSlider(dynamic value) {
    return _$onChangeSliderAsyncAction.run(() => super.onChangeSlider(value));
  }

  @override
  String toString() {
    return '''
positionSlider: ${positionSlider},
isPaused: ${isPaused},
duration: ${duration}
    ''';
  }
}
