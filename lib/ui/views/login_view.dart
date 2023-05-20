import 'package:announce/constants/ui_constants.dart';
import 'package:announce/themes/theme.dart';
import 'package:announce/ui/widgets/rounded_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/auth_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                AuthField(
                  textEditingController: emailController,
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 24.0,
                ),
                AuthField(
                  textEditingController: passwordController,
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: RoundedButton(
                    onTap: () {},
                    label: 'Done',
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Don`t have an account? ',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                          text: ' Sign up',
                          style: const TextStyle(
                            color: AppPalettes.blueColor,
                            fontSize: 16,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
