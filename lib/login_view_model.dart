import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {

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
}