import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  Auth._interno(); //Aqui retornamos una instancia de Auth, es un constructor privado

  static Auth get instancia => Auth._interno();

  //final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //final GoogleSignIn _googleSingIn = GoogleSignIn();

  Future<User> goglee(BuildContext context) async {
    try {
      // Activa el flujo de autenticación de Google.
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

      // Obtenga los detalles de autenticación de la solicitud.
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Crea una nueva credencial
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      
      // Inicia sesión en Firebase con Google [UserCredential].
      final UserCredential googleUserCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      final User user = googleUserCredential.user;
      print('Usuario : ${user.displayName}');
      Navigator.pushNamed(context, 'homepage');
      return user;
    } catch (e) {
      print(e);
      return null;
    }
  
  }
}
