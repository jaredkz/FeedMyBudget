import 'package:drift/drift.dart';

@DataClassName('Product')
class Products extends Table {
  const Products();

  IntColumn get stockCode => integer().named('Stockcode')();
  TextColumn get dietInfo => text().named('dietinfo').nullable()();
  TextColumn get priceData => text().named('pricedata').nullable()();
  IntColumn get price => integer().named('price').nullable()();
  TextColumn get displayName => text().named('DisplayName').nullable()();
  TextColumn get brand => text().named('Brand').nullable()();
  TextColumn get source => text().named('Source').nullable()();
  TextColumn get ingredients => text().named('ingredients').nullable()();
  TextColumn get subCategory => text().named('subcat').nullable()();
  TextColumn get description => text().named('description').nullable()();

  @override
  Set<Column> get primaryKey => {stockCode};
}
