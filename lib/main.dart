import 'package:flutter/material.dart';
import 'package:flutter_steo_by_step/pages/login_page.dart';
import 'package:flutter_steo_by_step/pages/logo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/logo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
        "/loginpage": (context) => SplashScreen(),
      },
    );
  }
}
