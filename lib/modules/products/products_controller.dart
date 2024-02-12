// ignore_for_file: match-getter-setter-field-names, unused_import

import 'package:flutter_modular/flutter_modular.dart';
import '/database/app_database.dart';
import '/database/tables/products.dart'; // Re-imported Products table definition

class ProductsController {
  final AppDatabase appDatabase = Modular.get<AppDatabase>();

  late Future<List<Product>> _first5ProductsFuture;

  ProductsController() {
    _first5ProductsFuture = _fetchFirst5Products();
  }

  Future<List<Product>> get first5Products => _first5ProductsFuture;

  Future<List<Product>> _fetchFirst5Products() async {
    final query = appDatabase.select(appDatabase.products)..limit(5);

    final results = await query.get();
    print("Fetched products: $results");
    return results;
  }
}
