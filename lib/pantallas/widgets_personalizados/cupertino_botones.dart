import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiperdental_ec/utils/constant.dart';

class BotonPersonalizado extends StatelessWidget {
  final VoidCallback funcionboton;
  final String nombredelboton;
  final Color colorfondoboton;
  final Color colortexto;

  const BotonPersonalizado(
      {Key key,
      @required this.funcionboton,
      @required this.nombredelboton,
      this.colorfondoboton,
      this.colortexto})
      : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: this.colorfondoboton ?? contentTextColor,
        ),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        child: Text(
          this.nombredelboton,
          style: TextStyle(
            fontSize: 16,
            letterSpacing: 1,
            fontFamily: 'sans',
            color: this.colortexto,
          ),
        ),
      ),
      onPressed: this.funcionboton,
    );
  }
}
