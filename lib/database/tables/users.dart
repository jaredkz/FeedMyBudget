import 'package:drift/drift.dart';

@DataClassName('User')
class Users extends Table {
  const Users();

  IntColumn get id => integer().autoIncrement()();
  TextColumn get username => text().withLength(min: 4, max: 128)();
  TextColumn get email =>
      text().customConstraint('UNIQUE NOT NULL').withLength(min: 1)();
  // Add more fields as needed
}
