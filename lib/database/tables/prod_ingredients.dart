// ignore_for_file: unused_import

import 'package:drift/drift.dart';
import 'products.dart';

@DataClassName('ProdIngredient')
class ProdIngredients extends Table {
  const ProdIngredients();

  IntColumn get id => integer().autoIncrement()();
  IntColumn get productId =>
      integer().customConstraint('REFERENCES products(stockCode) NOT NULL')();
  TextColumn get ingredient => text()();
}
