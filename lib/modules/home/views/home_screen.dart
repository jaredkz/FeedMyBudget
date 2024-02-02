import 'package:flutter/material.dart';
import '/shared/components/custom_drawer.dart'; // Ensure the path is correct

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers and any resources used by this widget.
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchSubmitted(String value) {
    // Implement your search logic here.
    // For now, just print the search value to the console.
    print("Search submitted: $value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  labelText: 'Search for items',
                  suffixIcon: Icon(Icons.search),
                ),
                onSubmitted: _onSearchSubmitted,
              ),
            ),
            // Add more widgets as needed
          ],
        ),
      ),
    );
  }
}
