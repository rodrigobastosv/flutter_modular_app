import 'dart:async';

import '../core.dart';

abstract class InjectionModule {
  void setInjector(AppInjector injector);
  FutureOr<void> registerDependencies();
}
