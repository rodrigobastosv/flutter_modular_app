import 'package:checkout/repository/checkout_repository.dart';
import 'package:core/core.dart';
import 'dart:async';
import 'main.dart';
import 'repository/abstract/i_checkout_repository.dart';

class CheckoutInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies() {
    appInjector.inject<ICheckoutRepository>(CheckoutRepository());
    appInjector.inject<IUserRepository>(UserRepository());
  }

  @override
  void setInjector(AppInjector injector) {
    appInjector = injector;
  }
}
