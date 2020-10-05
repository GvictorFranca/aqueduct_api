import 'package:get_it/get_it.dart';
import 'package:pizza_delivery_api/application/routers/i_router_configure.dart';
import 'package:pizza_delivery_api/modules/menu/controllers/menu_find_controller.dart';

import '../../pizza_delivery_api.dart';

class MenuRouter implements IRouterConfigure {
  @override
  void configure(Router router) {
    router.route('/menu').link(() => GetIt.I.get<MenuFindController>());
  }
}
