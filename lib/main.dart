import 'package:flutter/material.dart';
import 'package:flutter_steo_by_step/pages/login_page.dart';
// ignore: unused_import
import 'package:flutter_steo_by_step/pages/logo.dart';
import 'package:flutter_steo_by_step/utills/routes.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
// ignore: unused_import
import 'pages/logo.dart';
import 'pages/welcome.dart';
// import 'pages/Signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkThemeEnable = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      routes: {
        "/": (context) => WelcomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        // MyRoutes.signupRoute: (context) => SignupPage(),
      },
    );
  }
}
