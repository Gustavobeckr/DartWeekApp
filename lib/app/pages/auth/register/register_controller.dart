import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dart_week_app/app/pages/auth/register/register_state.dart';
import 'package:dart_week_app/app/repositories/auth/auth_repository.dart';

class RegisterController extends Cubit<RegisterState> {
  final AuthRepository _authRepository;

  RegisterController(this._authRepository)
      : super(const RegisterState.initial());

  Future<void> register(String name, String password, String email) async {
    try {
      emit(state.copyWith(status: RegisterStatus.register));

      await _authRepository.register(name, email, password);

      emit(state.copyWith(status: RegisterStatus.success));
    } catch (e, s) {
      log('Erro ao resgistrar usuário', error: e, stackTrace: s);
      emit(state.copyWith(status: RegisterStatus.error));
    }
  }
}
