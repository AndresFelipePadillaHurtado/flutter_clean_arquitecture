import 'package:clean_arquitecture/domain/entities/user_entity.dart';
import 'package:clean_arquitecture/domain/usecases/get_user_usecase.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final getUserUseCase = GetUserUseCase();

  UserEntity? _user;
  bool _isLoading = false;

  UserEntity? get user => _user;
  bool get isLoading => _isLoading;

  Future<void> fetchUser() async {
    try {
      _isLoading = true;
      final user = await getUserUseCase.getUser();
      _user = user;
    } catch (e) {
      // Manejar cualquier error de manera apropiada
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
