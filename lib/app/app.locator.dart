import 'package:get_it/get_it.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:staked_demo/data/login_repository.dart';
import 'package:staked_demo/domain/login_use_case.dart';

// final locator = StackedLocator.instance;
final GetIt locator = GetIt.instance;

setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
  // Register environments using StackedLocator
  // locator.registerEnvironment(environment: environment, environmentFilter: environmentFilter);

  // Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => LoginUseCase());
  locator.registerLazySingleton(() => LoginRepository());
}
