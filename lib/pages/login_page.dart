import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 56,
          ),
          SvgPicture.asset(
            "assets/user-login.svg",
            height: 200.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 55.0),
            child: GradientText('Welcome to E-fuel Filling ',
                style: TextStyle(
                  fontFamily: 'times new romman',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                colors: [
                  Colors.blueAccent,
                  Colors.blue,
                ]),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter username or gmail",
                      labelText: "Username or gmail"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter your Password", labelText: "Pasword"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
