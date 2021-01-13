import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.teal[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                child: Image.asset(
                  'assets/home.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "HiperDental",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Text(
                    "Odontologia de calidad a tu alcance",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: MaterialButton(
                  child: Icon(Icons.arrow_forward_ios),
                  elevation: 10.0,
                  color: Colors.teal[200],
                  minWidth: 170.0,
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'loginnuevo');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
