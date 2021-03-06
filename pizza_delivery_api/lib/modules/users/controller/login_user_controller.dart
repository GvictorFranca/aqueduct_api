import 'package:injectable/injectable.dart';
import 'package:pizza_delivery_api/application/exceptions/user_notfound_exception.dart';
import 'package:pizza_delivery_api/modules/users/service/i_user_service.dart';
import 'package:pizza_delivery_api/pizza_delivery_api.dart';

import 'models/login_user_rq.dart';

@Injectable()
class LoginUserController extends ResourceController {
  final IUserService _service;

  LoginUserController(this._service);

  @Operation.post()
  Future<Response> login(@Bind.body() LoginUserRq requestLogin) async {
    try {
      final user =
          await _service.login(requestLogin.email, requestLogin.password);
      return Response.ok(
          {'id': user.id, 'name': user.name, 'email': user.email});
    } on UserNotFoundException catch (e) {
      print(e);
      return Response.forbidden();
    } catch (e) {
      print(e);
      return Response.serverError(body: {'message': 'Internal server error'});
    }
  }
}
