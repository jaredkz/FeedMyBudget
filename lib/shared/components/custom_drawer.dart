import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Using ListView to accommodate for varying content lengths and ensure it's scrollable
        children: <Widget>[
          UserAccountsDrawerHeader(
            // This is the place for user information - adjust as needed
            accountName: Text(
              "User Name",
            ), // You might want to fetch this from your user model
            accountEmail: Text("user@example.com"), // Same as above
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "UN", // User initials - consider fetching from user model
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pop();
              Modular.to.navigate('/home/');
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () {
              Navigator.of(context).pop();
              Modular.to.navigate('/cart/');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.of(context).pop();
              Modular.to.navigate('/profile/');
            },
          ),
          // Add more ListTile widgets for other navigation items
        ],
      ),
    );
  }
}
