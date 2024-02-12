import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Splash Screen')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
