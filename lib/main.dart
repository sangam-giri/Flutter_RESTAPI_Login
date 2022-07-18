import 'package:flutter/material.dart';
import 'package:login_rest_api/login.dart';
import 'package:login_rest_api/sign_up.dart';
import './main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SignUp Login API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUp(),
      // home: const Login(),

    );
  }
}
