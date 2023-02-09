import 'package:dart_week_app/app/core/ui/theme/theme_config.dart';
import 'package:dart_week_app/app/pages/home/home_router.dart';
import 'package:dart_week_app/app/pages/order/order_completed.dart';
import 'package:dart_week_app/app/pages/order/order_router.dart';
import 'package:dart_week_app/app/pages/product_detail/product_detail_route.dart';
import 'package:dart_week_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'core/provider/application_bind.dart';
import 'pages/auth/login/login_router.dart';
import 'pages/auth/register/register_router.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBind(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRoute.page,
          '/auth/login': (context) => LoginRouter.page,
          '/auth/register': (context) => RegisterRouter.page,
          '/order': (context) => OrderRouter.page,
          '/order/completed': (context) => const OrderCompleted()
        },
      ),
    );
  }
}
