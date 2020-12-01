import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotonCircular extends StatelessWidget {
  final double size;
  final String rutaicono;
  final Color colordefondo;
  final VoidCallback onPressed;

  const BotonCircular(
      {Key key, this.size = 50.0, this.rutaicono, this.colordefondo, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Container(
        padding: EdgeInsets.all(10),
        height: this.size,
        width: this.size,
        child: Image.asset(
          this.rutaicono,
          color: Colors.white,
          height: 10.0,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: this.colordefondo,
        ),
      ),
      onPressed: this.onPressed ,
    );
  }
}
