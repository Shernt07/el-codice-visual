import 'package:flutter/material.dart';

class CardDisplayWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const CardDisplayWidget({super.key, required this.data});

  Color colorBorder(String rareza) {
    switch (rareza.toLowerCase()) {
      case 'mito':
        return Colors.orange;
      case 'leyenda':
        return const Color(0xFFFFD700); // dorado
      case 'dios':
        return const Color(0xFF8B0000); // rojo sangre
      case 'guerrero':
        return Colors.brown.shade300;
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isTapped = ValueNotifier(false);
    final String rareza = data["Rareza"] ?? "guerrero";
    final Color borderColor = colorBorder(rareza);

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
                        border: Border.all(color: borderColor, width: 10),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        clipBehavior: Clip.none,
                        children: [
                          // Imagen de fondo
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.network(
                              data["ArteURL"] ?? '',
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

                          if (tapped) ...[
                            // Vida
                            Positioned(
                              top: 16,
                              left: 16,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/img/corazon.png',
                                    height: 26,
                                    width: 30,
                                  ),
                                  Text(
                                    '${data["Vida"] ?? ''}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Espada
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
                                    '${data["Ataque"] ?? ''}',
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
                                  data["Nombre"] ?? '',
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

                            // Costo
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
                                    color: borderColor,
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
                                    '${data["Coste_Tonal"] ?? ''}',
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
