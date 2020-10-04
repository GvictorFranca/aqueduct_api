import 'package:injectable/injectable.dart';
import 'package:pizza_delivery_api/application/entities/user.dart';
import 'package:pizza_delivery_api/modules/users/data/i_user_repository.dart';
import 'package:pizza_delivery_api/modules/users/service/i_user_service.dart';
import 'package:pizza_delivery_api/modules/users/view_models/register_user_input_model.dart';

@LazySingleton(as: IUserService)
class UserSevice implements IUserService {
  final IUserRepository _repository;

  UserSevice(this._repository);

  @override
  Future<void> registerUser(RegisterUserInputModel registerInput) async {
    await _repository.saveUser(registerInput);
  }

  @override
  Future<User> login(String email, String password) {
    _repository.login(email, password);
  }
}
