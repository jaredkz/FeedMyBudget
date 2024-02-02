import 'package:flutter_modular/flutter_modular.dart';
import '/modules/cart/cart_module.dart';
import '/modules/cart/repositories/cart_repository.dart';
import '/modules/home/home_module.dart';
import '/modules/home/views/home_screen.dart';
import '../modules/cart/controllers/cart_controller.dart';
import '../modules/profile/profile_module.dart';
import '../database/app_database.dart';

class AppModule extends Module {
  final AppDatabase appDatabase;

  AppModule(this.appDatabase);

  @override
  void binds(i) {
    super.binds(i); // Call to super, in case it's needed

    // Provide the AppDatabase instance
    i.addSingleton<AppDatabase>(() => appDatabase);

    i.addLazySingleton<CartRepository>(() => CartRepository(i()));
    i.addLazySingleton<CartController>(() => CartController(i()));

// i.add<AuthController>(AuthController.new);
  }

  @override
  void routes(r) {
    r.module('/home/', module: HomeModule());
    r.child('/', child: (context) => HomeScreen(), children: [
      ModuleRoute('/home/cart/', module: CartModule()),
      ModuleRoute('/home/profile/', module: ProfileModule()),
    ]);
  }
}
