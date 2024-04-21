import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:staked_demo/view/home/home_page.dart';
import 'package:staked_demo/view/login/login_page.dart';

class Routes {
  static const String login = '/';
  static const String home = '/home';
}

class StackedRouter extends RouterBase {

  @override
  List<RouteDef> get routes => _routes;

  final _routes = <RouteDef>[
    RouteDef(Routes.login, page: LoginPage),
    RouteDef(Routes.home, page: MyHomePage),
  ];

  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;

  final _pagesMap = <Type, StackedRouteFactory>{
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginPage(),
        settings: data,
      );
    },
    MyHomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MyHomePage(),
        settings: data,
      );
    },
  };
}