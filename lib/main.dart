import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'shared/components/custom_error_widget.dart';
import 'core/app_module.dart';
import 'core/app_widget.dart';
import 'database/app_database.dart'; // Make sure this import points to the file with your AppDatabase class

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Async database initialization
    final AppDatabase database = await AppDatabase
        .create(); // Use the async create method to initialize the database

    // Set the initial route for Modular to use
    Modular.setInitialRoute('/');

    // Customize the ErrorWidget to use the CustomErrorWidget
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return CustomErrorWidget(errorMessage: details.exceptionAsString());
    };

    // Run the app with ModularApp and pass the database to AppModule
    runApp(ModularApp(module: AppModule(database), child: const AppWidget()));
  } catch (error) {
    // Handle potential errors during initialization
    runApp(MaterialApp(
        home: Scaffold(
            body: Center(child: Text('Initialization Error: $error')))));
  }
}
