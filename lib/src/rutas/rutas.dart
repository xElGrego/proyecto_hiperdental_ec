
import 'package:flutter/material.dart';
import 'package:hiperdental_ec/pantallas/home.dart';
import 'package:hiperdental_ec/pantallas/login_new.dart';
import 'package:hiperdental_ec/pantallas/pedirdatos.dart';

import '../../pantallas/inicio.dart';

Map <String,WidgetBuilder> todaslasrutas(){
  return <String,WidgetBuilder>{
    'inicio'    : (context) => SplashScreen(),
    'homepage'  : (context) => HomePage(),
    'info'      : (context) => Info(),
    'loginnuevo': (context) => LoginPage()
    
    
  };
}