// ignore_for_file: unused_import

import 'package:drift/drift.dart';
import 'products.dart'; // Ensure this import is correct

@DataClassName('PantryItem')
class PantryItems extends Table {
  const PantryItems();

  IntColumn get id => integer().autoIncrement()();
  IntColumn get productId => integer()
      .nullable()
      .customConstraint('NULL REFERENCES products(stockCode)')();
  TextColumn get name => text().nullable()();
}
