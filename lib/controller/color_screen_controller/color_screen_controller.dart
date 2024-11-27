import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_color_app/controller/color_screen_controller/color_screen_state.dart';

final colorscreenStateNotifierProvider =
    StateNotifierProvider((ref) => ColorScreenStateNotifier());

class ColorScreenStateNotifier extends StateNotifier<ColorScreenState> {
  ColorScreenStateNotifier()
      : super(ColorScreenState(scaffoldColor: Colors.black));

  onColorSelection(Color newColor) {
    state = state.copyWith(scaffoldColor: newColor);
  }
}
