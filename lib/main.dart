import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/core/router/app_router.dart';
import 'package:wallet/src/core/theme/app_theme.dart';
import 'package:wallet/src/core/utils/state/riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(isDarkModeProvider) ? AppTheme.dark : AppTheme.light,
      routerConfig: appRouter,
    );
  }
}
