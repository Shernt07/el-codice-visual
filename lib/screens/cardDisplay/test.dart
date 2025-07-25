import 'package:el_codice_visual/widgets/cards/card_display_widget.dart';
import 'package:flutter/material.dart';

// Página para testear las cartas
class TestCard extends StatelessWidget {
  final Map<String, dynamic> data;

  const TestCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // Widget carta
        children: [CardDisplayWidget(data: data)],
      ),
    );
  }
}
