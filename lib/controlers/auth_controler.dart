import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hiperdental_ec/pantallas/home.dart';

class AuthControler extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

  void google_signIn() async {
    // Activa el flujo de autenticación de Google.
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();

    // Obtiene los detalles de autenticación de la solicitud.
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Crea una nueva credencial
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    final User user = (await _auth
        .signInWithCredential(credential)
        .then((value) => Get.offAll(HomePage())));
  }

  void google_singOut() async {
    await googleSignIn.signOut();
  }
}
