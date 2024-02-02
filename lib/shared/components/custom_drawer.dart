import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Modular.to.navigate('/home'); // Navigate to the home page
            },
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text('Profile'),
                onTap: () {
                  Navigator.of(context).pop(); // Close the drawer
                  Modular.to
                      .navigate('/profile'); // Navigate to the profile page
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
