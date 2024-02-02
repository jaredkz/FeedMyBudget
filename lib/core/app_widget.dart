import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// The place where you set up your app-wide UI components like themes, navigation observers, localization, etc.

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      title: 'Feed My Budget',
      theme: ThemeData(
        // Theme customization.
        primarySwatch: Colors.lightBlue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          // Define other text styles.
        ),
      ),

      // Other configurations.
    );
  }
}
