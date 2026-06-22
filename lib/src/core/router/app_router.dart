import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet/src/feactures/home/presentation/home_screen.dart';
import 'package:wallet/src/feactures/statistics/presentation/screens/statistics_screen.dart';
import 'package:wallet/src/feactures/wallet/presentation/screens/wallet_screen.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(path: "/", builder: (context, state) => HomeScreen()),
    GoRoute(
      path: "/wallet",
      builder: (context, state) => WalletScreen(color: state.extra as Color),
    ),
        GoRoute(
      path: "/statistics",
      builder: (context, state) => StatisticsScreen(cardColor: state.extra as Color),
    ),
  ],
);
