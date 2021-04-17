import 'package:core/model/user_model.dart';

abstract class IUserRepository {
  Future<UserModel> getUser();
}
