import 'dart:math';
import 'package:flame/components.dart';
import 'package:flame/events.dart';

class SpriteComponentInitial extends SpriteComponent with TapCallbacks {
  // Variables
  final String image;
  bool isPulsing = false; // Pulsando o no
  double pulseTime = 0; // Cálculo del efecto
  final double pulseSpeed = 3; // Velocidad pulso
  final double normalScale = 1.0; // Escala default
  final double pulseScale = 1.2; // Escala base cuando pulsa

  // Constructor
  SpriteComponentInitial({required this.image, Vector2? size})
    : super(size: size ?? Vector2(100, 100)); /* tamano defecto */

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await Sprite.load(image);

    // position = gameRef.size / 2;
    position = Vector2(215, 470); /* Establece posición */

    anchor = Anchor.center;
  }

  // Manejo de eventos
  @override
  void onTapDown(TapDownEvent event) {
    isPulsing = true; // Activa efecto
  }

  // soltar carta
  @override
  void onTapUp(TapUpEvent event) {
    isPulsing = false; // Desactiva efecto
    scale = Vector2.all(normalScale); // Restaura tamaño original
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (isPulsing) {
      pulseTime += dt * pulseSpeed; // seno

      // Escala con efecto de pulso usando función seno
      double factor = pulseScale + 0.05 * sin(pulseTime % (2 * pi));
      scale = Vector2.all(factor);
    }
  }
}
