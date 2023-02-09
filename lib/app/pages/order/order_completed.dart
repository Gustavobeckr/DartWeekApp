import 'package:dart_week_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dart_week_app/app/core/ui/styles/text_styles.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class OrderCompleted extends StatelessWidget {
  const OrderCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: context.percentHeight(.20)),
            Image.asset('assets/images/logo_rounded.png'),
            const SizedBox(height: 20),
            Text(
              'Pedido realizado com sucesso, em breve você receberá a confirmação do seu pedido!! :)',
              textAlign: TextAlign.center,
              style: context.textStyles.textExtraBold.copyWith(
                  fontSize: 18, color: const Color.fromARGB(255, 7, 42, 73)),
            ),
            const SizedBox(height: 45),
            DeliveryButton(
                width: context.percentWidth(.8),
                label: 'Fechar',
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        )),
      ),
    );
  }
}
