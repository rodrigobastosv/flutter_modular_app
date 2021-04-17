import 'package:core/core.dart';
import 'dart:async';
import 'main.dart';
import 'repository/repository.dart';

class OnboardingInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies() {
    appInjector.inject<ISignInRepository>(SignInRepository());
    appInjector.inject<IUserRepository>(UserRepository());
  }

  @override
  void setInjector(AppInjector injector) {
    appInjector = injector;
  }
}
