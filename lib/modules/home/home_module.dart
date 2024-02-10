import 'package:flutter_modular/flutter_modular.dart';
import 'views/home_screen.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => HomeScreen());
  }
}
