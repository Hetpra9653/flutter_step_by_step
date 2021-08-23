import 'package:flutter/material.dart';
import 'package:flutter_steo_by_step/utills/routes.dart';

// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login_1.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 56,
              ),
              // SvgPicture.asset(
              //   "assets/user-login.svg",
              //   height: 200.0,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 105.0),
                child: GradientText('E-fuel Filling ',
                    style: TextStyle(
                      fontFamily: GoogleFonts.fredokaOne().fontFamily,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: [
                      Colors.orange.shade100,
                      Colors.orange.shade200,
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          labelStyle: TextStyle(color: Colors.orange),
                          hintText: "Enter username or gmail",
                          labelText: "Username or gmail"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          labelStyle: TextStyle(color: Colors.orange),
                          hintText: "Enter your Password",
                          labelText: "Pasword"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orangeAccent),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 50.0)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 15))),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
