import 'package:flutter/material.dart';

import 'login/login.dart';
import 'login/login2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // light for some projects, dark for some projects
      theme: ThemeData.light(),
      home: const LoginPageTwo(),
    );
  }
}
