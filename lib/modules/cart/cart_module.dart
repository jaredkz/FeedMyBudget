import 'package:flutter_modular/flutter_modular.dart';
import '../../database/app_database.dart';
import 'repositories/cart_repository.dart';
import 'views/cart_screen.dart';

class CartModule extends Module {
  @override
  void binds(i) {
    super.binds(i); // Call to super, in case it's needed
    i.addLazySingleton((i) => CartRepository(i.get<AppDatabase>()));
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => CartScreen());
  }
}
