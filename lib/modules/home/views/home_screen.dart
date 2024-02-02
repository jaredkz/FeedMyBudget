import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  String _selectedMenuItem = 'cart';

  void _selectMenuItem(String menuItem) {
    setState(() {
      _selectedMenuItem = menuItem;
    });
    // Close the drawer
    Navigator.of(context).pop();
    // Navigate to the selected page
    Modular.to.navigate('/home/$_selectedMenuItem');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              selected: _selectedMenuItem == 'home',
              onTap: () => _selectMenuItem('home'),
            ),
            ListTile(
              title: Text('Profile'),
              selected: _selectedMenuItem == 'profile',
              onTap: () => _selectMenuItem('profile'),
            ),
            ListTile(
              title: Text('Cart'),
              selected: _selectedMenuItem == 'cart',
              onTap: () => _selectMenuItem('cart'),
            ),
          ],
        ),
      ),
      // The main content area where selected page will be displayed
      body: RouterOutlet(),
    );
  }
}
