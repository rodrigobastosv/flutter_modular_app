import 'package:checkout/checkout_injection.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/marketplace_injection.dart';
import 'package:onboarding/onboarding_injection.dart';

import 'app_router.dart';

final appInjector = AppInjector();

final injectionModules = <InjectionModule>[
  OnboardingInjectionModule(),
  MarketplaceInjectionModule(),
  CheckoutInjectionModule(),
];

void main() {
  injectModuleDependencies(
    appInjector: appInjector,
    injectionModules: injectionModules,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }
}
