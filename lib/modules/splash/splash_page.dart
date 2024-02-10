import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    // Placeholder data for the template user
    final String userName = "John Doe";
    final String userEmail = "johndoe@example.com";
    // You can replace this URL with a local asset if you prefer
    final String userImageUrl = "https://via.placeholder.com/150";

    return Scaffold(
      appBar: AppBar(title: Text('Splash Screen')),
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
                  // Implement sign-out functionality here
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
