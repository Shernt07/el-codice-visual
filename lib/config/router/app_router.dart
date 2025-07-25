import 'package:el_codice_visual/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: "/home",
      name: "home_screen",
      pageBuilder:
          (context, state) => MaterialPage(key: state.pageKey, child: Home()),
    ),
    GoRoute(
      path: "/testcard",
      name: "testcard_screen",
      pageBuilder: (context, state) {
        final data = state.extra as Map<String, dynamic>;
        return MaterialPage(key: state.pageKey, child: TestCard(data: data));
      },
    ),
  ],
);
