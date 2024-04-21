class LoginRepository {

  login() async {
    await Future.delayed(
        const Duration(
            seconds: 3
        )
    );
    return true;
  }
}