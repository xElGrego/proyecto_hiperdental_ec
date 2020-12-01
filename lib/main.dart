//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hiperdental_ec/src/rutas/rutas.dart';
import 'pantallas/inicio.dart';

void main() async {
  //Para inicializar Firebase
  //await Firebase.initializeApp();

  //Esta linea carga una serie de componentes necesarios
  //Si no se agrega tendremos un error en tiempo de ejecucion
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<FirebaseApp> _initiliazition = Firebase.initializeApp();
    return FutureBuilder(
      future: _initiliazition,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container(
            child: Center(
              child: Text("Error 404 xd"),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'HiperDental',
            home: SplashScreen(),
            routes: todaslasrutas(),
            theme: ThemeData(
              textTheme: TextTheme(
                headline1: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w900,
                  color: Color(0XFF030047),
                ),
                headline2: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0XFF030047),
                ),
              ),
            ),
          );
        }
        return Container(
          child: Center(
            child: Text("XDXD"),
          ),
        );
      },
    );
  }
}
