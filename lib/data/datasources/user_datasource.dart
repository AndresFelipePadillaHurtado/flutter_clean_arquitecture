import 'package:clean_arquitecture/data/models/user_model.dart';
import 'package:clean_arquitecture/domain/datasources/user_datasource_interface.dart';
import 'package:clean_arquitecture/domain/entities/user_entity.dart';
import 'package:dio/dio.dart';

class UserDatasource implements UserDatasourceInterface {
  @override
  Future<UserEntity> getUser() async {
    final dio = Dio();

    // Lógica para obtener los datos del usuario desde una fuente externa
    // como una API o una base de datos local
    final response = await dio.get("https://random-data-api.com/api/v2/users");

    // Mapear la respuesta a un modelo de datos
    final userModel = UserModel.fromJson(response.data);

    // Convertir el modelo de datos a una entidad de dominio
    final userEntity = UserEntity.fromModel(userModel);

    return userEntity;
  }
}
