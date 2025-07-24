import 'package:el_codice_visual/widgets/buttons/base_button.dart';
import 'package:flutter/material.dart';

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
            BaseButton(name: 'Guerrero', nameroute: 'guerrero_screen'),
            BaseButton(name: 'Mito', nameroute: 'mito_screen'),
            BaseButton(name: 'Leyenda', nameroute: 'leyenda_screen'),
            BaseButton(name: 'Dios', nameroute: 'dios_screen'),
            BaseButton(name: 'Pruebas', nameroute: 'testcard_screen'),
          ],
        ),
      ),
    );
  }
}
