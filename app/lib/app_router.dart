import 'package:checkout/pages/checkout/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/pages/marketplace/marketplace_page.dart';
import 'package:onboarding/pages/sign_in/sign_in_page.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    final routeName = settings.name;

    Widget? widget;
    if (routeName == '/') {
      widget = SignInPage();
    } else if (routeName == 'marketplace') {
      widget = MarketplacePage();
    } else if (routeName == 'checkout') {
      widget = CheckoutPage();
    } else {
      widget = Container();
    }

    return MaterialPageRoute(
      builder: (_) => widget!,
    );
  }
}
