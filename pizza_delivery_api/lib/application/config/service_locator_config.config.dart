// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../database/database_connection.dart';
import '../database/i_database_connection.dart';
import '../../modules/users/data/i_user_repository.dart';
import '../../modules/users/service/i_user_service.dart';
import '../../modules/users/controller/login_user_controller.dart';
import 'pizza_delivery_configuration.dart';
import '../../modules/users/controller/register_user_controller.dart';
import '../../modules/users/data/user_repository.dart';
import '../../modules/users/service/user_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<IDatabaseConnection>(
      () => DataBaseConnection(get<PizzaDeliveryConfiguration>()));
  gh.lazySingleton<IUserRepository>(
      () => UserRepository(get<IDatabaseConnection>()));
  gh.lazySingleton<IUserService>(() => UserSevice(get<IUserRepository>()));
  gh.factory<LoginUserController>(
      () => LoginUserController(get<IUserService>()));
  gh.factory<RegisterUserController>(
      () => RegisterUserController(get<IUserService>()));
  return get;
}
