// base_button.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseButton extends StatelessWidget {
  final String name;
  final String nameroute;
  final Map<String, dynamic> data; // Nueva propiedad

  const BaseButton({
    super.key,
    required this.name,
    required this.nameroute,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.pushNamed(nameroute, extra: data); // Pasar el objeto
        },
        child: Text(name),
      ),
    );
  }
}
