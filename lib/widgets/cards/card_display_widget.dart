import 'package:flutter/material.dart';

class CardDisplayWidget extends StatelessWidget {
  final String name;
  final String artURL;
  final String rarity;
  final int costTonal;
  final int stroke;
  final int health;

  const CardDisplayWidget({
    super.key,
    required this.name,
    required this.artURL,
    required this.rarity,
    required this.costTonal,
    required this.stroke,
    required this.health,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isTapped = ValueNotifier(false);

    return Center(
      child: ValueListenableBuilder<bool>(
        valueListenable: isTapped,
        builder: (_, tapped, __) {
          return TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 200),
            tween: Tween(begin: 1.0, end: tapped ? 1.05 : 1.0),
            curve: Curves.easeInOut,
            builder: (_, scale, child) {
              return Transform.scale(
                scale: scale,
                child: GestureDetector(
                  onTap: () => isTapped.value = !tapped,
                  child: Card(
                    elevation: 14,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: const EdgeInsets.all(20),
                    child: Container(
                      width: 280,
                      height: 410,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.brown.shade300,
                          width: 10,
                        ),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        clipBehavior: Clip.none,
                        children: [
                          // Imagen de fondo
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.network(
                              artURL,
                              fit: BoxFit.cover,
                              errorBuilder:
                                  (_, __, ___) => Container(
                                    color: Colors.grey.shade300,
                                    child: const Center(
                                      child: Icon(
                                        Icons.network_check,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                            ),
                          ),

                          // Mostrar elementos condicionales al tap
                          if (tapped) ...[
                            // Coste (gota)
                            Positioned(
                              top: 16,
                              left: 16,
                              child: ClipPath(
                                clipper: DropShapeClipper(),
                                child: Container(
                                  width: 27,
                                  height: 35,
                                  color: Colors.brown.shade300,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '$costTonal',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // Ataque (espada)
                            Positioned(
                              top: 16,
                              right: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/img/espada.png',
                                    height: 26,
                                    width: 30,
                                  ),
                                  Text(
                                    '$stroke',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 4,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Nombre
                            Positioned(
                              bottom: 40,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 40,
                                color: Colors.black.withOpacity(0.5),
                                alignment: Alignment.center,
                                child: Text(
                                  name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 3,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // Salud (círculo abajo)
                            Positioned(
                              bottom: -24,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.brown.shade300,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.4),
                                        blurRadius: 6,
                                        offset: const Offset(2, 2),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '$health',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 2,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DropShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.quadraticBezierTo(0, size.height * 0.3, 0, size.height * 0.6);
    path.quadraticBezierTo(0, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width,
      size.height * 0.6,
    );
    path.quadraticBezierTo(size.width, size.height * 0.3, size.width / 2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
