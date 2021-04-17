import 'package:get_it/get_it.dart';

final injector = GetIt.I..allowReassignment = true;

class AppInjector {
  void inject<T extends Object>(T object) {
    if (!injector.isRegistered(instance: object)) {
      injector.registerLazySingleton<T>(() => object);
    }
  }

  T get<T extends Object>() {
    return injector.get<T>();
  }
}
