import 'package:clean_arquitecture/domain/entities/user_entity.dart';

abstract class UserRepositoryInterface {
  Future<UserEntity> getUser();
}
