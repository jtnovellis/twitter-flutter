import 'package:flutter/material.dart';
import 'package:twitter_clone/features/view/login_view.dart';
import 'package:twitter_clone/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: AppTheme.theme,
      home: const LoginView(),
    );
  }
}
