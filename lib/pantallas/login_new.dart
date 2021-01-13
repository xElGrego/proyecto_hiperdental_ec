import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hiperdental_ec/controlers/auth_controler.dart';
import 'package:hiperdental_ec/pantallas/bienvenido.dart';
import 'package:hiperdental_ec/pantallas/pagina_principal.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthControler controler = AuthControler();
    return GetBuilder<AuthControler>(
      init: controler,
      builder: (_)=> SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Text(name),
                  Welcome(),
                  LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
