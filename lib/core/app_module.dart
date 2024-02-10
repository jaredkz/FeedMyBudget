import 'package:flutter_modular/flutter_modular.dart';
import '../modules/cart/cart_module.dart';
import '/modules/home/home_module.dart';
import '/modules/home/views/home_screen.dart';
import '../modules/profile/profile_module.dart';
import '../database/app_database.dart';

class AppModule extends Module {
  final AppDatabase appDatabase;

  AppModule(this.appDatabase);

  @override
  void binds(i) {
    super.binds(i);

    i.addSingleton<AppDatabase>(() => appDatabase);

    //i.addLazySingleton<CartRepository>(() => CartRepository(i()));
    //i.addLazySingleton<CartController>(() => CartController(i()));
    //i.add<AuthController>(AuthController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => HomeScreen());
    r.module('/home/', module: HomeModule());
    r.module('/profile/', module: ProfileModule());
    r.module('/cart/', module: CartModule());
  }
}


/*

CODE REFERENCE:

r.child('/', child: (SplashModule) => HomeScreen(), children: [
      ModuleRoute('/cart/', module: CartModule()),
      ModuleRoute('/profile/', module: ProfileModule()),
      ModuleRoute('/splash/', module: SplashModule()),
    ]);
*/