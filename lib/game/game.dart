import 'package:el_codice_visual/game/components/card_component.dart';
import 'package:el_codice_visual/game/components/rectangle_Component.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

//!  Clase principal (FlameGame) Motor
class GameFlame extends FlameGame {
  @override
  Color backgroundColor() => Colors.white;

  @override
  // Inicializar componentes y/o recursos.
  Future<void> onLoad() async {
    super.onLoad();
    // Flame.device.fullScreen();
    // add(RectangleInitialComponent(color: Colors.purple, sizeRectangle: 300));
    add(
      SpriteComponentInitial(image: 'aztecagood.jpeg', size: Vector2(200, 300)),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);
    // Lógica del juego, actualizaciones de estado, coliciones, puntuación etc.
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    // Dibujar elementos del juego, sprites, texto, etc.
  }
}
