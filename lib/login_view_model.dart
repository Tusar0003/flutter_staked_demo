import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:staked_demo/app/app.locator.dart';
import 'package:staked_demo/app/app.router.dart';

class LoginViewModel extends BaseViewModel {

  final BuildContext _context;
  final _navigationService = locator<NavigationService>();

  LoginViewModel(this._context);

  login() async {
    setBusy(true);
    await Future.delayed(
      const Duration(
        seconds: 3
      )
    );
    setBusy(false);
    return true;
  }

  navigateToHome() {
    // Navigator.pushNamed(_context, Routes.home, arguments: 'Home Page');
    _navigationService.navigateTo(Routes.home, arguments: 'Home Page');
  }
}