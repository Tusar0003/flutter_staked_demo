import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:staked_demo/view/home/home_page.dart';
import 'package:staked_demo/view/login/login_page.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginPage, initial: true),
    MaterialRoute(page: MyHomePage)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetUp {}
