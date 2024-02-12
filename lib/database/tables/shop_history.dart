// ignore_for_file: unused_import

import 'package:drift/drift.dart';
import 'users.dart';
import 'cart_items.dart';

@DataClassName('ShopHistory')
class ShopHistories extends Table {
  const ShopHistories();

  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId =>
      integer().nullable().customConstraint('NULL REFERENCES users(id)')();
  TextColumn get cartSnapshot => text().nullable()();
  DateTimeColumn get timestamp => dateTime().nullable()();
  RealColumn get totalAmount => real().nullable()();
}
