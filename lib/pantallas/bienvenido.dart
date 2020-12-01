import 'package:flutter/material.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AspectRatio(
        aspectRatio: 13 / 9,
        //LayoutBuilder crea un widget que pospone su construcción hasta el diseño.
        //Tambien sirve para conocer las dimensiones del los otros widgets
        child: LayoutBuilder(
          builder: (context, contraints) {
            return Container(
              child: Stack(
                children: [
                  Positioned(
                    top: contraints.maxHeight * 0.76,
                    child: Column(
                      children: [
                        Container(
                          height: 4,
                          //Utilizamos el constraints para saber el ancho maximo que se puede obtener
                          width: contraints.maxWidth,
                          //color: Colors.teal[200],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Bienvenido",
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/sillon_pacientes.jpg',
                      fit: BoxFit.contain,
                      width: contraints.maxWidth,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
