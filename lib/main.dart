import 'package:el_codice_visual/config/router/app_router.dart';
import 'package:flutter/material.dart';
export 'package:el_codice_visual/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
      ),
      routerConfig: appRouter, // Aquí conectas tu GoRouter
    );
  }
}
