// lib/database/tables/cart_items.dart
import 'package:drift/drift.dart';

@DataClassName('CartItem')
class CartItems extends Table {
  const CartItems();

  IntColumn get id => integer().autoIncrement()();
  TextColumn get productName => text()();
  IntColumn get quantity => integer()();
  RealColumn get price => real()();
}
