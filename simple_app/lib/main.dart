import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_app/router/app_router.gr.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _rootRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      routerDelegate: _rootRouter.delegate(),
      routeInformationProvider: _rootRouter.routeInfoProvider(),
      routeInformationParser: _rootRouter.defaultRouteParser(),
    );
  }
}
