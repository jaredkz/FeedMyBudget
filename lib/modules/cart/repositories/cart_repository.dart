// lib/modules/cart/repositories/cart_repository.dart
import '/database/app_database.dart';

class CartRepository {
  final AppDatabase _database;

  const CartRepository(this._database);

  Future<void> addItem(CartItemsCompanion item) async {
    await _database.into(_database.cartItems).insert(item);
  }

  Future<List<CartItem>> getCartItems() async {
    return _database.select(_database.cartItems).get();
  }

  Future<void> removeItem(int itemId) async {
    await (_database.delete(_database.cartItems)
          ..where((item) => item.id.equals(itemId)))
        .go();
  }

  Future<void> updateItem(CartItemsCompanion updatedItem) async {
    await (_database.update(_database.cartItems)
          ..where((item) => item.id.equals(updatedItem.id.value)))
        .write(updatedItem);
  }

  Future<void> clearCart() async {
    await _database.delete(_database.cartItems).go();
  }
}
