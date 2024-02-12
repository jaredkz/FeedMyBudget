import 'package:flutter_modular/flutter_modular.dart';
import 'profile_controller.dart';
import 'profile_page.dart';

class ProfileModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(() => ProfileController(i.get()));
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => ProfilePage());
  }
}
