import 'package:flutter/material.dart';
import 'package:widget_testing/src/auth_feature/app_text_form_field.dart';
import 'package:widget_testing/src/sample_feature/sample_item_list_view.dart';
import 'package:widget_testing/src/shared/auth_validator_extension.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const routeName = '/';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final _loginFormKey = GlobalKey<FormState>();
  late final _emailAddressController = TextEditingController();
  late final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailAddressController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16),
                AppTextFormField(
                  labelText: 'Email Address',
                  controller: _emailAddressController,
                  validator: context.validateEmail,
                ),
                const SizedBox(height: 16),
                AppTextFormField(
                  labelText: 'Password',
                  controller: _passwordController,
                  validator: context.validatePassword,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_loginFormKey.currentState?.validate() == false) return;

                    Navigator.pushNamed(
                      context,
                      SampleItemListView.routeName,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                  ),
                  child: const Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
