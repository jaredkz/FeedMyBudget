// ignore_for_file: unused_import

import 'package:drift/drift.dart';
import 'products.dart';

@DataClassName('MarkedItem')
class MarkedItems extends Table {
  const MarkedItems();

  IntColumn get id => integer().autoIncrement()();
  IntColumn get productId =>
      integer().customConstraint('NOT NULL REFERENCES products(stockCode)')();
}
