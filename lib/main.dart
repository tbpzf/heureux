import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routing/routes.dart' as routes;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes.router,
      title: 'Heureux',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
