import 'dart:convert';
import 'package:drift/drift.dart';

import 'package:flutter/services.dart' show rootBundle;
import '/database/tables/marked_items.dart';
import '/database/tables/pantry_items.dart';
import '/database/tables/prod_ingredients.dart';
import '/database/tables/products.dart';
import '/database/tables/recipe_ingredients.dart';
import '/database/tables/recipes.dart';
import '/database/tables/shop_history.dart';
import '/database/tables/stores.dart';
import '/database/tables/user_preferences.dart';
import '/database/tables/users.dart';
import '/database/tables/cart_items.dart';
import 'database.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  CartItems,
  MarkedItems,
  PantryItems,
  ProdIngredients,
  Products,
  RecipeIngredients,
  Recipes,
  ShopHistories,
  Stores,
  UserPreferences,
  Users,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  static Future<AppDatabase> create() async {
    final executor = await getDatabaseExecutor();
    final db = AppDatabase(executor);
    await db._populateInitialData();
    return db;
  }

  Future<void> _populateInitialData() async {
    final productCount = await select(products).get().then((p) => p.length);
    if (productCount == 0) {
      final data = await rootBundle.loadString('data/products.json');
      final List<dynamic> productList = json.decode(data);

      await batch((batch) {
        batch.insertAllOnConflictUpdate(
          products,
          productList.map((json) {
            return ProductsCompanion.insert(
              stockCode: Value(json['Stockcode']
                  as int), // Adjusted to 'Stockcode' to match JSON key
              dietInfo: json['dietinfo'] != null
                  ? Value(json['dietinfo'] as String)
                  : Value.absent(),
              priceData: json['pricedata'] != null
                  ? Value(json['pricedata'] as String)
                  : Value.absent(),
              price: json['price'] != null
                  ? Value(((json['price'] as double) * 100).round())
                  : Value.absent(),
              displayName: json['DisplayName'] != null
                  ? Value(json['DisplayName'] as String)
                  : Value.absent(),
              brand: json['Brand'] != null
                  ? Value(json['Brand'] as String)
                  : Value.absent(),
              source: json['Source'] != null
                  ? Value(json['Source'] as String)
                  : Value.absent(),
              ingredients: json['ingredients'] != null
                  ? Value(json['ingredients'] as String)
                  : Value.absent(),
              subCategory: json['subcat'] != null
                  ? Value(json['subcat'] as String)
                  : Value.absent(),
              description: json['description'] != null
                  ? Value(json['description'] as String)
                  : Value.absent(),
            );
          }).toList(),
        );
      });
    }
  }
}
