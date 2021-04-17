abstract class ISignInRepository {
  Future<bool> signInUser(String email, String password);
}
