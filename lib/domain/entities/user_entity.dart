import 'package:clean_arquitecture/data/models/user_model.dart';

class UserEntity {
  final String name;
  final String email;
  final String lastName;

  UserEntity({required this.name, required this.email, required this.lastName});

  factory UserEntity.fromModel(UserModel model) {
    return UserEntity(
        name: model.name, email: model.email, lastName: model.lastName);
  }
}
