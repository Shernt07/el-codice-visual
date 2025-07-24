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
      pageBuilder:
          (context, state) =>
              MaterialPage(key: state.pageKey, child: TestCard()),
    ),
    GoRoute(
      path: "/guerrero",
      name: "guerrero_screen",
      pageBuilder:
          (context, state) =>
              MaterialPage(key: state.pageKey, child: GuerreroScreen()),
    ),
    GoRoute(
      path: "/mito",
      name: "mito_screen",
      pageBuilder:
          (context, state) =>
              MaterialPage(key: state.pageKey, child: MitoScreen()),
    ),
    GoRoute(
      path: "/leyenda",
      name: "leyenda_screen",
      pageBuilder:
          (context, state) =>
              MaterialPage(key: state.pageKey, child: LeyendaScreen()),
    ),
    GoRoute(
      path: "/dios",
      name: "dios_screen",
      pageBuilder:
          (context, state) =>
              MaterialPage(key: state.pageKey, child: DiosScreen()),
    ),
  ],
);
