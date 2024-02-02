import 'package:flutter_modular/flutter_modular.dart';
import '/modules/auth/domain/auth_controller.dart'; // Adjust import path as needed

class ProfileController {
  final AuthController _authController = Modular.get<AuthController>();

  Future<void> signOut() async {
    await _authController.signOut();
    Modular.to.navigate('/login'); // Navigate to the login screen
  }

  // Add other profile-related logic here
}
