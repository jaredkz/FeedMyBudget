import 'package:flutter_modular/flutter_modular.dart';
import 'splash_page.dart';

class SplashModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => SplashPage());
  }
}
