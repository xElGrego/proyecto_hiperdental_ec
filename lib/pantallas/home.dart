
import 'package:flutter/material.dart';
import 'package:hiperdental_ec/pantallas/HomePage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          HomePage(),
        ],
      ),
    );
  }
}