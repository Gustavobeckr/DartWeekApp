import 'package:dart_week_app/app/pages/order/order_controller.dart';
import 'package:dart_week_app/app/repositories/auth/order/order_repository.dart';
import 'package:dart_week_app/app/repositories/auth/order/order_repository_impl.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'order_page.dart';

class OrderRouter {
  OrderRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<OrderRepository>(
            create: (context) => OrderRepositoryImpl(
              dio: context.read(),
            ),
          ),
          Provider(
            create: (context) => OrderController(
              context.read(),
            ),
          ),
        ],
        child: const OrderPage(),
      );
}
