import 'package:dart_week_app/app/core/rest_client/custom_dio.dart';
import 'package:dart_week_app/app/repositories/auth/auth_repository.dart';
import 'package:dart_week_app/app/repositories/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApplicationBind extends StatelessWidget {
  final Widget child;

  const ApplicationBind({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => CustomDio(),
        ),
        Provider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(
            dio: context.read(),
          ),
        ),
      ],
      child: child,
    );
  }
}
