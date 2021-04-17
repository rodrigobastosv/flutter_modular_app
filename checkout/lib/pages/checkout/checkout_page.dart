import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'checkout_controller.dart';

class CheckoutPage extends GetWidget<CheckoutController> {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('carrinho'),
      ),
    );
  }
}