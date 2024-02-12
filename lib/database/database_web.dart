import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

Future<DatabaseConnection> connectOnWeb() async {
  final result = await WasmDatabase.open(
    databaseName: 'fmb_database',
    sqlite3Uri: Uri.parse('sqlite3.wasm'),
    driftWorkerUri: Uri.parse('drift_worker.dart.js'),
  );

  if (result.missingFeatures.isNotEmpty) {
    // Depending on how central local persistence is to your app, you may want
    // to show a warning to the user if only unreliable implementations
    // are available.
    print('Using ${result.chosenImplementation} due to missing browser '
        'features: ${result.missingFeatures}');
  }

  return DatabaseConnection.delayed(Future.value(result.resolvedExecutor));
}

Future<DatabaseConnection> getExecutor() async {
  return connectOnWeb();
}
