import 'package:flutter_modular/flutter_modular.dart';
import 'repositories/cart_repository.dart';
import 'views/cart_screen.dart';

class CartModule extends Module {
  @override
  void binds(i) {
    super.binds(i);
    i.addLazySingleton((i) => CartRepository(i()));
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => CartScreen());
  }
}
