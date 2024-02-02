// File: lib/modules/cart/widgets/cart_item_widget.dart

import 'package:flutter/material.dart';
import '../../../database/app_database.dart'; // Adjust the import based on your project structure

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  const CartItemWidget({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.shopping_cart), // Placeholder icon, change as needed
      title: Text(cartItem.productName),
      subtitle: Text('Quantity: ${cartItem.quantity}'),
      trailing: Text('\$${cartItem.price.toStringAsFixed(2)}'),
    );
  }
}
