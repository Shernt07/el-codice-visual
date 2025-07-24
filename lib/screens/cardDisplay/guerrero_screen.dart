import 'package:el_codice_visual/widgets/cards/card_display_widget.dart';
import 'package:flutter/material.dart';

class GuerreroScreen extends StatelessWidget {
  const GuerreroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CardDisplayWidget(
            name: 'Set',
            artURL:
                'https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDNyN2FzdjN6MTUyNzc0NWl1dno0cDRtcGdwcDVqZ2Jnb3ZoOXdyeCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/4ilFRqgbzbx4c/giphy.gif',
            rarity: 'Guerrero',
            costTonal: 9,
            stroke: 10,
            health: 5,
          ),
        ],
      ),
    );
  }
}
