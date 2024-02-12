// ignore_for_file: unused_import

import 'package:drift/drift.dart';
import 'recipes.dart';
import 'products.dart';

@DataClassName('RecipeIngredient')
class RecipeIngredients extends Table {
  const RecipeIngredients();

  IntColumn get id => integer().autoIncrement()();
  IntColumn get recipeId =>
      integer().customConstraint('REFERENCES recipes(id) NOT NULL')();
  TextColumn get name => text()();
  IntColumn get productId => integer()
      .nullable()
      .customConstraint('NULL REFERENCES products(stockCode)')();
  TextColumn get amount => text()();
  TextColumn get unit => text().nullable()();
}
