import 'package:flutter/material.dart';

import 'di/injection_container.dart';
import 'routing/router.dart';
import 'ui/core/theme.dart';

void main() async {
  await initializedDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      routerConfig: router(),
    );
  }
}
