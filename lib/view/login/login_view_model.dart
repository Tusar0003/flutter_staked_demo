import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:staked_demo/app/app.locator.dart';
import 'package:staked_demo/app/app.router.dart';
import 'package:staked_demo/data/login_repository.dart';
import 'package:staked_demo/domain/login_use_case.dart';

class LoginViewModel extends BaseViewModel {

  final BuildContext _context;
  // final LoginUseCase _loginUseCase;
  final _navigationService = getIt<NavigationService>();

  LoginViewModel(this._context);

  login() async {
    setBusy(true);
    LoginUseCase loginUseCase = getIt<LoginUseCase>();
    bool isLoggedIn = await loginUseCase.call();
    setBusy(false);
    return isLoggedIn;
  }

  navigateToHome() {
    // Navigator.pushNamed(_context, Routes.home, arguments: 'Home Page');
    _navigationService.navigateTo(Routes.home, arguments: 'Home Page');
  }
}