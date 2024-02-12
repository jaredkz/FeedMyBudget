import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "User Name",
            ),
            accountEmail: Text("user@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "UN",
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
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text('Products'),
            onTap: () {
              Navigator.of(context).pop();
              Modular.to.navigate('/products/');
            },
          ),
        ],
      ),
    );
  }
}
