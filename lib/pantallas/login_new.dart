import 'package:flutter/material.dart';
import 'package:hiperdental_ec/pantallas/bienvenido.dart';
import 'package:hiperdental_ec/pantallas/pagina_principal.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Welcome(),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
