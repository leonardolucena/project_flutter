import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: const LoginPage(),
    );
  }
}
