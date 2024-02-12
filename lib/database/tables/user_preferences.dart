// ignore_for_file: unused_import

import 'package:drift/drift.dart';
import 'users.dart';

@DataClassName('UserPreference')
class UserPreferences extends Table {
  const UserPreferences();

  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId =>
      integer().customConstraint('REFERENCES users(id) NOT NULL')();
  TextColumn get preferenceType => text()();
  TextColumn get preferenceKey => text()();
  TextColumn get preferenceValue => text().nullable()();
}
