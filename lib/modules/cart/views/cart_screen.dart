import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../database/app_database.dart';
import '../controllers/cart_controller.dart';
import '../widgets/cart_item_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late final CartController _cartController;

  @override
  void initState() {
    super.initState();
    _cartController = Modular.get<CartController>();
    _cartController.getCartItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: StreamBuilder<List<CartItem>>(
        stream: _cartController
            .cartItemsStream, // Use the stream from the controller
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error.toString()}'));
          } else if (snapshot.hasData && snapshot.data!.isEmpty) {
            return const Center(child: Text('Your cart is empty.'));
          }
          final cartItems = snapshot.data ?? [];
          return ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (_, index) {
              final cartItem = cartItems[index];
              return CartItemWidget(cartItem: cartItem);
            },
          );
        },
      ),
    );
  }
}
