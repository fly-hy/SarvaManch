import 'package:flutter/material.dart';
import 'package:sarva_munch/screens/home_screen.dart';
import 'package:sarva_munch/screens/login_screen.dart';
import 'package:sarva_munch/screens/signup_screen.dart';
import 'package:sarva_munch/theme.dart';
import 'package:sarva_munch/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const signUpPage(),
        MyRoutes.homeRoute: (context) => const HomeScreen(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.signUpRoute: (context) => const signUpPage(),
      },
    );
  }
}
