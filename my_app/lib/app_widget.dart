import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: LoginPage(),
    );
  }
}
