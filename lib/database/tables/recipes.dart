import 'package:drift/drift.dart';

@DataClassName('Recipe')
class Recipes extends Table {
  const Recipes();

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get description => text().nullable()();
  IntColumn get servingSize => integer().nullable()();
  IntColumn get cookingTime => integer().nullable()();
  TextColumn get difficulty => text().nullable()();
  TextColumn get variation => text().nullable()();
}
