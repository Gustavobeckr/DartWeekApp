// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dart_week_app/app/core/exceptions/repository_exception.dart';
import 'package:dart_week_app/app/core/rest_client/custom_dio.dart';
import 'package:dart_week_app/app/models/auth_model.dart';
import 'package:dio/dio.dart';

import '../../core/exceptions/unauthorized_exception.dart';
import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImpl({
    required this.dio,
  });

  @override
  Future<AuthModel> login(String email, String password) async {
    try {
      final result = await dio.unauth().post('/auth', data: {
        'email': email,
        'password': password,
      });

      return AuthModel.fromMap(result.data);
    } on DioError catch (e, s) {
      if (e.response?.statusCode == 403) {
        log('Permissão negada', error: e, stackTrace: s);
        throw UnauthorizedExceptions();
      }
      log('Erro ao realizar login', error: e, stackTrace: s);
      throw RepositoryException(messege: 'Erro ao relizar login!');
    }
  }

  @override
  Future<void> register(String name, String email, String password) async {
    try {
      await dio.unauth().post('/users', data: {
        'name': name,
        'email': email,
        'password': password,
      });
    } on DioError catch (e, s) {
      log('Erro ao resistrar usuário', error: e, stackTrace: s);
      throw RepositoryException(messege: 'Erro ao resistrar usuário');
    }
  }
}
