import 'package:el_codice_visual/widgets/cards/card_display_widget.dart';
import 'package:flutter/material.dart';

class GuerreroScreen extends StatelessWidget {
  GuerreroScreen({super.key});

  final carta = {
    "Nombre": "Huitzilopochtli",
    "ArteURL":
        "https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDNyN2FzdjN6MTUyNzc0NWl1dno0cDRtcGdwcDVqZ2Jnb3ZoOXdyeCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/4ilFRqgbzbx4c/giphy.gif",
    "Rareza": "Leyenda",
    "Coste_Tonal": 8,
    "Ataque": 8,
    "Vida": 10,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CardDisplayWidget(data: carta)],
      ),
    );
  }
}
