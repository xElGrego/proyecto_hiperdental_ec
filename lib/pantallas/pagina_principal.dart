import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hiperdental_ec/controlers/auth_controler.dart';
import 'package:hiperdental_ec/pantallas/widgets_personalizados/boton_circular.dart';
import 'package:hiperdental_ec/pantallas/widgets_personalizados/cupertino_botones.dart';
import 'package:hiperdental_ec/pantallas/widgets_personalizados/cupertino_textfield.dart';
import 'package:hiperdental_ec/utils/colores.dart';

class LoginForm extends GetWidget<AuthControler> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CupertinoText(
              direcciondeicono: 'assets/icons/correo.png',
              textoenpantalla: 'Correo',
            ),
            SizedBox(height: 20.0),
            CupertinoText(
              direcciondeicono: 'assets/icons/candado.png',
              textoenpantalla: 'Contraseña',
            ),
            SizedBox(height: 20.0),
            Container(
              alignment: Alignment.centerRight,
              child: CupertinoButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "¿Olvidó la contraseña?",
                  style: TextStyle(color: Colores.colorprimario),
                ),
                disabledColor: CupertinoColors.quaternarySystemFill,
                onPressed: () {},
              ),
            ),
            SizedBox(height: 12.0),
            BotonPersonalizado(
              funcionboton: () {},
              nombredelboton: 'Ingresar',
              colortexto: Colors.black,
            ),
            SizedBox(height: 25.0),
            Text(
              'También puedes ingresar con',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'sans',
                  color: Colores.colorprimario),
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotonCircular(
                  colordefondo: Colors.red,
                  rutaicono: 'assets/google.png',
                 onPressed: ()  {
                    print("Google");
                    controller.google_signIn();
                    print('SIIIIIIIIIII');
                  },
                ),
                SizedBox(width: 18.0),
                BotonCircular(
                  colordefondo: Colors.blue,
                  rutaicono: 'assets/facebook.png',
                  onPressed: () {
                    print("Face");
                  },
                ),
              ],
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¿No tienes una cuenta?",
                  style: TextStyle(fontSize: 14),
                ),
                CupertinoButton(
                  child: Text(
                    "Crear cuenta",
                    style: TextStyle(
                        fontFamily: 'sans', color: Colores.colorprimario),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }
}


