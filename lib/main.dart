import 'package:flame/game.dart';
import 'package:flopy_bird/game/flappy_bird_game.dart';
import 'package:flopy_bird/screens/game_over_screen.dart';
import 'package:flopy_bird/screens/main_menu_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(
      game: game,
      initialActiveOverlays: const [MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu': (context, _) => MainMenuScreen(game: game),
        'gameOver': (context, _) => GameOverScreen(game: game),
      },
    ),
  );
}
