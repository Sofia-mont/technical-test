import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test_sofia/config/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final routerProvider = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Technical Test',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 33, 50, 66),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 33, 50, 66),
        ),
      ),
      routerConfig: routerProvider,
    );
  }
}
