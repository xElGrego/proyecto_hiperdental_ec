import 'package:flutter/material.dart';

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(),
          SizedBox(height: 40.0),
          SingleChildScrollView(
            child: Column(
              children: [
                titulo(),
                SizedBox(height: 18.0,),
                packdeCajas(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget packdeCajas() {
    return Table(
      children: [
        TableRow(
          children: <Widget>[
            personalizadoxd(
              'Agendar Cita',
              'assets/iconosxd/png/001-teeth.png',
            ),
            personalizadoxd(
              'Diagnósitco',
              'assets/iconosxd/png/007-tooth.png',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            personalizadoxd(
              'Odontopediatria',
              'assets/iconosxd/png/049-baby teeth.png',
            ),
            personalizadoxd(
              'Brackets',
              'assets/iconosxd/png/004-braces.png',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            personalizadoxd(
              'Placas',
              'assets/iconosxd/png/045-smile.png',
            ),
            personalizadoxd(
              'Implantes',
              'assets/iconosxd/png/047-dental implant.png',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            personalizadoxd(
              'Otra cosa',
              'assets/iconosxd/png/001-teeth.png',
            ),
            personalizadoxd(
              'Otra cosa',
              'assets/iconosxd/png/001-teeth.png',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            personalizadoxd(
              'Diagnostico',
              'assets/iconosxd/png/001-teeth.png',
            ),
            personalizadoxd(
              'Diagnostico',
              'assets/iconosxd/png/001-teeth.png',
            ),
          ],
        ),

      ],
    );
  }

  Container titulo() {
    return Container(
      height: 180.0,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "HiperDental",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60.0),
              child: Image.asset(
                'assets/hiperdental.jpg',
                height: 110.0,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget personalizadoxd(String contenido, String asseticono) {
  return Container(
    height: 180.0,
    margin: EdgeInsets.all(13.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.teal[400],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          asseticono,
          height: 60.0,
          color: Colors.teal[900],
        ),
        Text(contenido)
      ],
    ),
  );
}
