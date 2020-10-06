import 'package:pizza_delivery_api/modules/orders/view_object/save_order_input_model.dart';

abstract class IOrderService {
  Future<void> saveOrder(SaveOrderInputModel saveOrder);
}
