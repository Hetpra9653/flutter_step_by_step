// ignore: unused_import
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name"),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(" Change Theme",
                    style: TextStyle(
                      fontFamily: 'times new roman',
                      fontSize: 15.0,
                    )),
                trailing: Switch(value: false, onChanged: (changedtheme) {}),
              )
            ],
          ),
        ));
  }
}
