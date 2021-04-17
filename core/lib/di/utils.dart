import '../core.dart';

void injectModuleDependencies({
  required AppInjector appInjector,
  required List<InjectionModule> injectionModules,
}) {
  for (var module in injectionModules) {
    module.setInjector(appInjector);
    module.registerDependencies();
  }
}
