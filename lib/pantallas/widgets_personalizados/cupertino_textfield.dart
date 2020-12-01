import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoText extends StatelessWidget {
  final String direcciondeicono, textoenpantalla;

  const CupertinoText(
      {Key key,
      @required this.direcciondeicono,
      @required this.textoenpantalla})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder:this.textoenpantalla,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      prefix: Container(
        height: 20.0,
        width: 30.0,
        child: Image.asset(
          this.direcciondeicono,
          height: 30.0,
          color: Colors.grey,
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
