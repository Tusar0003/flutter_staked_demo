import 'package:injectable/injectable.dart';
import 'package:staked_demo/data/login_repository.dart';

@injectable
class LoginUseCase {

  final LoginRepository _loginRepository;

  LoginUseCase(this._loginRepository);

  call() async {
    return await _loginRepository.login();
  }
}
