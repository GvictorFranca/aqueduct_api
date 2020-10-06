import 'package:injectable/injectable.dart';
import 'package:pizza_delivery_api/modules/orders/data/i_order_repository.dart';
import 'package:pizza_delivery_api/modules/orders/view_object/save_order_input_model.dart';

import './i_order_service.dart';

@LazySingleton(as: IOrderService)
class OrderService implements IOrderService {
  final IOrderRepository _repository;

  OrderService(this._repository);

  @override
  Future<void> saveOrder(SaveOrderInputModel saveOrder) async {
    await _repository.saveOrder(saveOrder);
  }
}
