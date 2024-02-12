import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../database/app_database.dart'; // Ensure this path is correct
import '../../shared/components/custom_drawer.dart';
import 'products_controller.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final productsController = Modular.get<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      drawer: CustomDrawer(),
      body: FutureBuilder<List<Product>>(
        future: productsController.first5Products,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            // Consider adding retry functionality or more user-friendly error handling
            return Center(child: Text('Error: ${snapshot.error.toString()}'));
          }
          if (!snapshot.hasData) {
            return const Center(child: Text('No data found'));
          }
          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products.elementAtOrNull(index);
              return ListTile(
                title: Text(product?.displayName ?? 'No name'),
                subtitle: Text(product?.price?.toString() ?? 'No price'),
              );
            },
          );
        },
      ),
    );
  }
}
