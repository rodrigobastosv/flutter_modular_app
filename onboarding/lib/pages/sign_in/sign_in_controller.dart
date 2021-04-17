import 'package:flutter/widgets.dart';
import 'package:onboarding/repository/abstract/i_sign_in_repository.dart';

class SignInController extends ChangeNotifier {
  SignInController(this.repository);

  final ISignInRepository repository;

  String? _login;
  String? _password;
  bool isLoading = false;

  void setLogin(String login) {
    _login = login;
  }

  void setPassword(String password) {
    _password = password;
  }

  Future<bool> signInUser() async {
    isLoading = true;
    notifyListeners();
    return await repository.signInUser(_login!, _password!);
  }
}
