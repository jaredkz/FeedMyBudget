import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'core/app_module.dart';
import 'core/app_widget.dart';
import 'database/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Async database initialization
    final AppDatabase database = await AppDatabase.create();
    // Set the initial route for Modular to use
    Modular.setInitialRoute('/home/');

    runApp(ModularApp(module: AppModule(database), child: const AppWidget()));
  } catch (error) {
    // Handle potential errors during initialization
    runApp(MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Initialization Error: $error')),
      ),
    ));
  }
}
