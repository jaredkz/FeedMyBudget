import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';
import '/database/app_database.dart';
import '../repositories/cart_repository.dart';

class CartController extends Disposable {
  final CartRepository _repository;
  final _cartItemsController = StreamController<List<CartItem>>.broadcast();

  CartController(this._repository) {
    getCartItems(); // Fetch cart items on initialization
  }

  Stream<List<CartItem>> get cartItemsStream => _cartItemsController.stream;

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
    await getCartItems();
  }

  Future<void> removeItem(int itemId) async {
    await _repository.removeItem(itemId);
    await getCartItems();
  }

  Future<void> updateItem(CartItem updatedItem) async {
    await _repository.updateItem(updatedItem.toCompanion(true));
    await getCartItems();
  }

  Future<void> clearCart() async {
    await _repository.clearCart();
    await getCartItems();
  }

  @override
  void dispose() {
    _cartItemsController.close();
  }
}
