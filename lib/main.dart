import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:staked_demo/app_router.dart';
import 'package:staked_demo/home_page.dart';
import 'package:staked_demo/login_page.dart';

void main() {
  runApp(const MyApp());
}

// @StackedApp(routes: [
//   MaterialRoute(page: LoginPage),
//   MaterialRoute(page: MyHomePage),
// ])
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stacked Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRouter.login,
      routes: {
        AppRouter.login: (context) => const LoginPage(),
        AppRouter.home: (context) => const MyHomePage(),
      },
    );
  }
}
