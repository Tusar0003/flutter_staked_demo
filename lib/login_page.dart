import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:staked_demo/app_router.dart';
import 'package:staked_demo/login_view_model.dart';

class LoginPage extends StackedView<LoginViewModel> {

  const LoginPage({super.key});

  @override
  Widget builder(BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Scaffold(
      body: viewModel.isBusy ? const Center(
        child: CircularProgressIndicator(),
      ) : Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () async {
            bool isLoggedIn = await viewModel.login();
            isLoggedIn ? Navigator.pushNamed(context, AppRouter.home, arguments: 'Home Page') : null;
          },
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) {
    return LoginViewModel();
  }
}