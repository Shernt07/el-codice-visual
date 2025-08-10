import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class RectangleInitialComponent extends PositionComponent {
  final double sizeRectangle;
  final Color color;
  final double borderRadius;

  RectangleInitialComponent({
    this.sizeRectangle = 150, // Valor por defecto
    this.color = Colors.red,
    this.borderRadius = 16,
  }) : super(
         size: Vector2(sizeRectangle, sizeRectangle), // Vector2(x, y)
       );

  ///  Este método se llama cada vez que el tamaño del juego cambia.
  @override
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);

    //! Centrar: posición = mitad de la pantalla - mitad del cuadrado
    position = gameSize / 2 - size / 2;
  }

  /// Aquí definimos cómo se dibuja el componente.
  /// `Canvas` es el lienzo donde se pinta el rectángulo.
  @override
  void render(Canvas canvas) {
    super.render(canvas);

    // Creamos un "pincel" con el color deseado.
    final paint = Paint()..color = color;

    // Definimos un rectángulo desde (0,0) hasta (ancho, alto).
    final rect = Rect.fromLTWH(0, 0, size.x, size.y);

    // Lo convertimos en un RRect (rectángulo redondeado).
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));

    // Dibujamos en el lienzo.
    canvas.drawRRect(rrect, paint);
  }
}
