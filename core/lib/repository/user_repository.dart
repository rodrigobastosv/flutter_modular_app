import 'package:core/model/user_model.dart';
import 'package:core/repository/abstract/i_user_repository.dart';

class UserRepository implements IUserRepository {
  @override
  Future<UserModel> getUser() async {
    return Future.value(
      UserModel(id: '1', name: 'User'),
    );
  }
}
