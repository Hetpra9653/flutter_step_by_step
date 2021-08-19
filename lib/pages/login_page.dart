import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/login_image.png"),
          // SizedBox(
          //   height: 01,
          // ),
          Text(
            "Welcome To E-Fuel Filling App",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          )
        ],
      ),
    );
  }
}
