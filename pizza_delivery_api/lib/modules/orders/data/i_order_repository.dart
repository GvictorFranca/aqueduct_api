import 'package:pizza_delivery_api/modules/orders/view_object/save_order_input_model.dart';

abstract class IOrderRepository {
  Future<void> saveOrder(SaveOrderInputModel orderSave);
}