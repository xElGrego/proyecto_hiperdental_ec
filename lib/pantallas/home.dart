import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final _user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF4DB6AC),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            barraSuperior(),
            
          ],
        ),
      ),
    );
  }




  Widget barraSuperior() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "${_user.displayName}",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
          CircleAvatar(
            maxRadius: 35,
            backgroundImage: NetworkImage(_user.photoURL),
          ),
        ],
      ),
    );
  }
}
