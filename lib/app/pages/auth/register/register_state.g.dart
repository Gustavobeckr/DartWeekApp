// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_state.dart';

// **************************************************************************
// MatchExtensionGenerator
// **************************************************************************

extension RegisterStatusMatch on RegisterStatus {
  T match<T>(
      {required T Function() intial,
      required T Function() register,
      required T Function() success,
      required T Function() error}) {
    final v = this;
    if (v == RegisterStatus.intial) {
      return intial();
    }

    if (v == RegisterStatus.register) {
      return register();
    }

    if (v == RegisterStatus.success) {
      return success();
    }

    if (v == RegisterStatus.error) {
      return error();
    }

    throw Exception('RegisterStatus.match failed, found no match for: $this');
  }

  T matchAny<T>(
      {required T Function() any,
      T Function()? intial,
      T Function()? register,
      T Function()? success,
      T Function()? error}) {
    final v = this;
    if (v == RegisterStatus.intial && intial != null) {
      return intial();
    }

    if (v == RegisterStatus.register && register != null) {
      return register();
    }

    if (v == RegisterStatus.success && success != null) {
      return success();
    }

    if (v == RegisterStatus.error && error != null) {
      return error();
    }

    return any();
  }
}
