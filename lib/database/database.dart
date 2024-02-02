import 'dart:async';
import 'package:drift/drift.dart';
import 'database_stub.dart'
    if (dart.library.io) 'database_native.dart'
    if (dart.library.html) 'database_web.dart';

Future<QueryExecutor> getDatabaseExecutor() => getExecutor();
