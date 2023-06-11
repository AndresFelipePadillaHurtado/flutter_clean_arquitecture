import 'package:clean_arquitecture/data/datasources/user_datasource.dart';
import 'package:clean_arquitecture/data/repositories/user_repository.dart';
import 'package:clean_arquitecture/domain/entities/user_entity.dart';

class GetUserUseCase {
  final _userRepository = UserRepository(userDatasource: UserDatasource());

  Future<UserEntity> getUser() {
    return _userRepository.getUser();
  }
}
