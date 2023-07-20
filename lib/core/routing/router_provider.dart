import 'package:flutter/material.dart';
import 'package:flutter_workshop_example/features/home/view/detail_screen.dart';
import 'package:flutter_workshop_example/features/home/view/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:palestine_console/palestine_console.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: '/',
    observers: [],
    redirect: (context, state) {
      Print.green('ROUTER REDIRECT: ${state.location}', name: 'APP');
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const MaterialPage(child: HomeScreen()),
      ),
      GoRoute(
        path: '/detail/:id',
        pageBuilder: (BuildContext context, GoRouterState state) {
          final id = int.parse(state.pathParameters['id']!);
          return MaterialPage(child: DetailScreen(id: id));
        },
      ),
    ],
  ),
);
