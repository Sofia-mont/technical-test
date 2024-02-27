import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:technical_test_sofia/core/presentation/error_screen.dart';
import 'package:technical_test_sofia/features/detail/presentation/detail_screen.dart';
import 'package:technical_test_sofia/features/home/presentation/home_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      initialLocation: '/home',
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/detail',
          name: 'detail',
          builder: (context, state) => const DetailScreen(),
        )
      ],
      errorBuilder: (context, state) => ErrorScreen(
            message: state.error.toString(),
          ));
});
