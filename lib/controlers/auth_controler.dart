import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:get/get.dart';

class AuthControler extends GetxController {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  
  Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  // Create a new credential
  final GoogleAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  // Once signed in, return the UserCredential
  return await _auth.signInWithCredential(credential);
  
}

  void googlesingOut() async {
    await _googleSignIn.signOut();
  }
}
