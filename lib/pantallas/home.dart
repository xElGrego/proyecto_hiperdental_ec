import 'package:flutter/material.dart';
import 'package:hiperdental_ec/pantallas/cuerpo.dart';

class HomePage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: appbarxd(),
        body: Cuerpo(),
      ),
    );
  }

  AppBar appbarxd() {
    return AppBar(
      backgroundColor: Colors.teal,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.power_input),
        onPressed: () {},
      ),
    );
  }
}
