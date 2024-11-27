import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_color_app/controller/color_screen_controller/color_screen_controller.dart';
import 'package:riverpod_color_app/controller/color_screen_controller/color_screen_state.dart';

class ColorScreen extends ConsumerWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Color> myColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.black,
      Colors.purple,
    ];
    final colorScreenState =
        ref.watch(colorscreenStateNotifierProvider) as ColorScreenState;
    return Scaffold(
      backgroundColor: colorScreenState.scaffoldColor,
      body: ListView.separated(
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  ref
                      .read(colorscreenStateNotifierProvider.notifier)
                      .onColorSelection(myColors[index]);
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  color: myColors[index],
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(height: 15),
          itemCount: myColors.length),
    );
  }
}
