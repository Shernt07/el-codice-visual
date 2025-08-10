import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseButton extends StatelessWidget {
  final String name;
  final String nameroute;
  final Map<String, dynamic> data;

  const BaseButton({
    super.key,
    required this.name,
    required this.nameroute,
    this.data = const {},
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.pushNamed(nameroute, extra: data); // Objeto
        },
        child: Text(name),
      ),
    );
  }
}
