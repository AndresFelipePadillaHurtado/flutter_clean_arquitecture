import 'package:clean_arquitecture/data/datasources/user_datasource.dart';
import 'package:clean_arquitecture/domain/entities/user_entity.dart';
import 'package:clean_arquitecture/domain/repositories/user_repository_interface.dart';

class UserRepository implements UserRepositoryInterface {
  final UserDatasource userDatasource;

  UserRepository({required this.userDatasource});

  @override
  Future<UserEntity> getUser() async {
    return userDatasource.getUser();
  }
}
