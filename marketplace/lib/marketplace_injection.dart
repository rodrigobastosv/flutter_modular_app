import 'package:core/core.dart';
import 'package:core/repository/abstract/i_product_repository.dart';
import 'package:core/repository/product_repository.dart';
import 'dart:async';

import 'main.dart';

class MarketplaceInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies() {
    appInjector.inject<IUserRepository>(UserRepository());
    appInjector.inject<IProductRepository>(ProductRepository());
  }

  @override
  void setInjector(AppInjector injector) {
    appInjector = injector;
  }
}
