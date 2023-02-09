import 'package:dart_week_app/app/pages/auth/login/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'login_page.dart';

class LoginRouter {
  LoginRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => LoginController(
              context.read(),
            ),
          ),
        ],
        child: const LoginPage(),
      );
}
