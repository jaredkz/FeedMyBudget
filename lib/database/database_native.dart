import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

Future<QueryExecutor> getExecutor() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  final file = File(
      p.join(dbFolder.path, 'wooliesfood.db')); // Name of your prepopulated DB

  if (!await file.exists()) {
    // Load the prepopulated database file from the assets
    final data = await rootBundle.load('assets/wooliesfood.db');
    final List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    // Write the loaded bytes to the database file path
    await file.writeAsBytes(bytes, flush: true);
  }

  return NativeDatabase(file);
}
