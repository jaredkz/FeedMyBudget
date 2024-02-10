import 'package:flutter/material.dart';
import '../../shared/components/custom_drawer.dart'; // Ensure this path is correct for your project structure

class CartPage extends StatelessWidget {
  const CartPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Placeholder for the number of items in the cart
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart), // Placeholder icon
                      title: Text('Item ${index + 1}'), // Placeholder item name
                      subtitle: Text('Quantity: 1'), // Placeholder quantity
                      trailing: IconButton(
                        icon: Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          // Implement item removal functionality here
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement checkout functionality here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Make the button wider
              ),
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
