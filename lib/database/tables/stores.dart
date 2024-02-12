import 'package:drift/drift.dart';

@DataClassName('Store')
class Stores extends Table {
  const Stores();

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get location => text().nullable()();
}
