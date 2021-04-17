import 'package:checkout/repository/abstract/i_checkout_repository.dart';

class CheckoutRepository implements ICheckoutRepository {
  @override
  Future<bool> sendOrder() async {
    return await Future.value(true);
  }
}
