import 'package:staked_demo/app/app.locator.dart';
import 'package:staked_demo/data/login_repository.dart';

class LoginUseCase {

  call() async {
    LoginRepository loginRepository = locator.get<LoginRepository>();
    return await loginRepository.login();
  }
}