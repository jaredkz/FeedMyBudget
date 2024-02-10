import 'package:flutter_modular/flutter_modular.dart';
import 'profile_page.dart';

class ProfileModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => ProfilePage());
  }
}
