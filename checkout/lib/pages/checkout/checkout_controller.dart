import 'package:checkout/main.dart';
import 'package:checkout/repository/abstract/i_checkout_repository.dart';
import 'package:get/state_manager.dart';

class CheckoutController extends GetxController {
  final repository = appInjector.get<ICheckoutRepository>();

  Future<void> sendOrder() async {
    await repository.sendOrder();
  }
}
