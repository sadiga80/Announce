import 'package:announce/themes/theme.dart';
import 'package:announce/ui/pages/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Announce',
      theme: AppTheme.theme,
      home: const Home(title: 'Announce'),
    );
  }
}
