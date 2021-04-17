import 'package:onboarding/repository/abstract/i_sign_in_repository.dart';

class SignInRepository implements ISignInRepository {
  @override
  Future<bool> signInUser(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return Future.value(true);
  }
}
