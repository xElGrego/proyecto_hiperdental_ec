//Con el rootBondle me permite leer la data del archivo json
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }
  Future <List<dynamic>> cargarData() async {
    //Esto regresa un future
    final resp = await rootBundle.loadString('assets/menu.json');
      //Se transforma el string a Map con el json
      Map dataMap = json.decode(resp);

      opciones = dataMap['rutas'];
      
      return opciones;
  }
}

final menuProvider = _MenuProvider();
