import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../database/app_database.dart'; // Adjust the import as necessary
import '../repositories/cart_repository.dart';

class CartController extends Disposable {
  final CartRepository _repository;
  final _cartItemsController = StreamController<List<CartItem>>.broadcast();

  CartController(this._repository) {
    getCartItems(); // Fetch cart items on initialization
  }

  Stream<List<CartItem>> get cartItemsStream => _cartItemsController.stream;

  // Renamed from _initializeCartItems to getCartItems for clarity
  Future<void> getCartItems() async {
    try {
      final items = await _repository.getCartItems();
      _cartItemsController.sink.add(items);
    } catch (e) {
      _cartItemsController.sink.addError('Failed to fetch cart items');
    }
  }

  Future<void> addItem(CartItem item) async {
    await _repository.addItem(item.toCompanion(true));
    await getCartItems(); // Refresh cart items
  }

  Future<void> removeItem(int itemId) async {
    await _repository.removeItem(itemId);
    await getCartItems(); // Refresh cart items
  }

  Future<void> updateItem(CartItem updatedItem) async {
    await _repository.updateItem(updatedItem.toCompanion(true));
    await getCartItems(); // Refresh cart items
  }

  Future<void> clearCart() async {
    await _repository.clearCart();
    await getCartItems(); // Refresh cart items
  }

  @override
  void dispose() {
    _cartItemsController.close();
  }
}
