// database_web.dart
import 'package:drift/drift.dart';
import 'package:drift/web.dart';

Future<QueryExecutor> getExecutor() async {
  return WebDatabase('your_database_name');
}
