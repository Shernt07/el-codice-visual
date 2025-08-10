import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import '../game/game.dart';

// Parseo para usar el motor Flame en Flutter (GoRouter)
class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GameWidget(game: GameFlame()));
  }
}
