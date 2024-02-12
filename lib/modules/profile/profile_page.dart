import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../shared/components/custom_drawer.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage();

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final ProfileController controller;

  @override
  void initState() {
    super.initState();
    controller = Modular.get<ProfileController>();
    _loadUserData(1); // Example user ID
  }

  Future<void> _loadUserData(int userId) async {
    final user = await controller.getUser(userId);
    if (user != null) {
      print('User Data: ${user.username}, ${user.email}');
    }
  }

  @override
  Widget build(BuildContext context) {
    //final controller = Modular.get<ProfileController>();
    final String userName = "John Doe";
    final String userEmail = "johndoe@example.com";
    final String userImageUrl = "https://via.placeholder.com/150";

    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: NetworkImage(userImageUrl),
                radius: 50,
              ),
              SizedBox(height: 20),
              Text(userName, style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: 10),
              Text(userEmail, style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Sign Out not implemented")),
                  );
                },
                child: Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
