import 'package:flutter_modular/flutter_modular.dart';
import '../modules/auth/auth_module.dart';
import '../modules/home/home_module.dart';
import '../modules/profile/profile_module.dart';
import '../database/app_database.dart';
import '../modules/profile/profile_controller.dart';
// import '../modules/auth/domain/auth_controller.dart';

class AppModule extends Module {
  final AppDatabase appDatabase;

  AppModule(this.appDatabase);

  @override
  void binds(i) {
    super.binds(i); // Call to super, in case it's needed

    // Provide the AppDatabase instance
    i.addSingleton<AppDatabase>(() => appDatabase);

    i.addLazySingleton<ProfileController>(() => ProfileController());
// i.add<AuthController>(AuthController.new);
  }

  @override
  void routes(RouteManager r) {
    r.module('/', module: HomeModule());
    r.module('/auth', module: AuthModule());
    r.module('/profile', module: ProfileModule());
    // Ensure your routes are correctly set up for your modules
  }
}
