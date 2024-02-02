import 'package:drift/drift.dart';
import 'database.dart'; // Import your conditional database logic
import 'tables/cart_items.dart'; // Import your table definitions

part 'app_database.g.dart';

@DriftDatabase(tables: [CartItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  // Static method to asynchronously create an instance of AppDatabase
  static Future<AppDatabase> create() async {
    final executor = await getDatabaseExecutor();
    return AppDatabase(executor);
  }
}
