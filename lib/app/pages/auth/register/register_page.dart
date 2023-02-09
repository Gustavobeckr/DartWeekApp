import 'package:dart_week_app/app/core/ui/styles/text_styles.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_button.dart';
import 'package:dart_week_app/app/pages/auth/register/register_controller.dart';
import 'package:dart_week_app/app/pages/auth/register/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/base_state/base_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends BaseState<RegisterPage, RegisterController> {
  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailEC.dispose();
    _nameEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterController, RegisterState>(
      listener: (context, state) {
        state.status.matchAny(
          any: () => hideLoader(),
          register: () => showLoader(),
          error: () {
            hideLoader();
            showError('Erro ao registrar usuário');
          },
          success: () {
            hideLoader();
            showSuccess('Cadastro realizado com sucesso');
            Navigator.pop(context);
          },
        );
      },
      child: Scaffold(
        appBar: DeliveryAppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cadastro',
                  style: context.textStyles.textTitle,
                ),
                Text(
                  'Preencha os campos para criar o cadastro.',
                  style: context.textStyles.textMedium.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _nameEC,
                  validator: Validatorless.required('Nome Obrigatório'),
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _emailEC,
                  validator: Validatorless.multiple([
                    Validatorless.required('Email Obrigatório'),
                    Validatorless.email('E-mail inválido')
                  ]),
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  obscureText: true,
                  controller: _passwordEC,
                  validator: Validatorless.multiple([
                    Validatorless.required('Senha Obrigatória'),
                    Validatorless.min(
                        6, 'Senha deve ter no mínimo 6 caracteres')
                  ]),
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  obscureText: true,
                  validator: Validatorless.multiple([
                    Validatorless.required('Confirma senha Obrigatória'),
                    Validatorless.compare(
                        _passwordEC, 'Senha diferente de confirmação')
                  ]),
                  decoration: const InputDecoration(
                    labelText: 'Confirma senha',
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: DeliveryButton(
                    onPressed: () {
                      final valid = _formKey.currentState?.validate() ?? false;
                      if (valid) {
                        controller.register(
                            _nameEC.text, _passwordEC.text, _emailEC.text);
                      }
                    },
                    label: 'Cadastrar',
                    width: double.infinity,
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
