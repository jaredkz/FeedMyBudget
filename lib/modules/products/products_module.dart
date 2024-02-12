import 'package:flutter_modular/flutter_modular.dart';
import 'products_page.dart';

class ProductsModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => ProductsPage());
  }
}
