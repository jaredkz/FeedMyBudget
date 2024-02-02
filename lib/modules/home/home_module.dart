import 'package:flutter_modular/flutter_modular.dart';
import 'view/home_screen.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    super.binds(i); // Call to super, in case it's needed
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => HomePage());
  }
}