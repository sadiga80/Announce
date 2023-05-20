import 'package:announce/themes/app_palettes.dart';
import 'package:announce/ui/views/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants/ui_constants.dart';
import '../widgets/auth_field.dart';
import '../widgets/rounded_button.dart';

class SignUpView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignUpView());
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                    text: 'Already have an account? ',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                          text: ' Login',
                          style: const TextStyle(
                            color: AppPalettes.blueColor,
                            fontSize: 16,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(context, LoginView.route());
                            })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
