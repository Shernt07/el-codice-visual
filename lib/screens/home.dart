import 'package:el_codice_visual/widgets/buttons/base_button.dart';
import 'package:flutter/material.dart';
import 'package:el_codice_visual/models/cards_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('El Códice Visual', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BaseButton(
              name: 'Guerrero',
              nameroute: 'testcard_screen',
              data: cartaGuerrero,
            ),
            BaseButton(
              name: 'Mito',
              nameroute: 'testcard_screen',
              data: cartaMito,
            ),
            BaseButton(
              name: 'Leyenda',
              nameroute: 'testcard_screen',
              data: cartaLeyenda,
            ),
            BaseButton(
              name: 'Dios',
              nameroute: 'testcard_screen',
              data: cartaDios,
            ),
          ],
        ),
      ),
    );
  }
}
