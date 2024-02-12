import 'package:flutter_modular/flutter_modular.dart';
import '../modules/cart/cart_module.dart';
import '../modules/products/products_controller.dart';
import '../modules/products/products_module.dart';
import '../modules/profile/profile_controller.dart';
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
    //i.addLazySingleton<FoodItemsDao>(() => FoodItemsDao(appDatabase));
    //i.addLazySingleton<FoodItemController>(
    //  () => FoodItemController(i.get()), );
    i.addSingleton<ProfileController>(() => ProfileController(i()));
    i.addSingleton<ProductsController>(() => ProductsController());

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
    r.module('/products/', module: ProductsModule());
  }
}


/*

CODE REFERENCE:

r.child('/', child: (SplashModule) => ShopScreen(), children: [
      ModuleRoute('/category2/', module: CartModule()),
      ModuleRoute('/category3/', module: ProfileModule()),
      ModuleRoute('/category4/', module: SplashModule()),
    ]);
*/