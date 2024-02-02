import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage();
  @override
  Widget build(BuildContext context) {
    //  final controller = Modular.get<ProfileController>();

    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(child: Text('Sign Out')),
    );
  }
}
