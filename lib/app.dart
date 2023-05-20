import 'package:announce/themes/theme.dart';
import 'package:announce/ui/views/signup_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Announce',
      theme: AppTheme.theme,
      home: const SignUpView(),
    );
  }
}
