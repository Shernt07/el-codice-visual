import 'dart:math';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class RectangleInitialComponent extends PositionComponent {
  final double sizeRectangle;
  final double borderRadius;
  final double pulsoSize;
  final double pulsoSpeed;
  final double intervalChange;
  Color colorInitial;
  Color colorObjective;
  double timeColor = 0;
  double initialTime = 0;

  RectangleInitialComponent({
    // Por defecto
    this.sizeRectangle = 150,
    Color color = Colors.blue,
    this.borderRadius = 16,
    this.pulsoSize = 30,
    this.pulsoSpeed = 2,
    this.intervalChange = 2.0,
  }) : colorInitial = color,
       colorObjective = color,
       super(size: Vector2(sizeRectangle, sizeRectangle));

  @override /* Colocar el cuadro en el centro */
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);
    position = gameSize / 2 - size / 2;
  }

  @override /* Game Loop */
  void update(double dt) {
    super.update(dt);

    initialTime += dt;
    timeColor += dt;

    // Efecto de pulsación
    double scalaAnimacion = sin(initialTime * pulsoSpeed) * pulsoSize;
    size = Vector2(
      sizeRectangle + scalaAnimacion,
      sizeRectangle + scalaAnimacion,
    );

    // Interpolación de color
    double t = (timeColor / intervalChange).clamp(0, 1);
    colorInitial = Color.lerp(colorInitial, colorObjective, t)!;

    if (timeColor >= intervalChange) {
      colorObjective = _color()[Random().nextInt(_color().length)];
      timeColor = 0;
    }
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    final paint = Paint()..color = colorInitial;
    final rect = Rect.fromLTWH(0, 0, size.x, size.y);
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));

    canvas.drawRRect(rrect, paint);
  }

  List<MaterialColor> _color() {
    return [Colors.red, Colors.purple, Colors.orange, Colors.cyan];
  }
}
