import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AvatarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double circleRadius = 120.0; // Define el radio del círculo

    return Scaffold(
      backgroundColor: Color(0xffE0E0E0),
      appBar: AppBar(
        title: Text('Avatar Screen'), // Agrega el encabezado aquí
      ),
      body: Center(
        // Centra la tarjeta y la descripción
        child: Container(
          height: double.infinity,
          width: double .infinity,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: circleRadius / 2.0),
                      child: Container(
                        height: 400.0, // Aumenta el tamaño de la tarjeta
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 8.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: circleRadius / 2),
                              Text(
                                'Maria Elliot',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34.0,
                                ),
                              ),
                              Text(
                                'Albany, New York',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 32.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Esta es la descripción del usuario. Puedes agregar información adicional aquí.',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 20.0), // Agrega espacio entre la descripción y los iconos
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              width: 48,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue,
                                              ),
                                              child: Center(
                                                child: FaIcon(
                                                  FontAwesomeIcons.twitter,
                                                  size: 24,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                                height: 12.0), // Aumenta la separación inferior
                                            Text(
                                              'Me gusta',
                                              style: TextStyle(
                                                fontSize: 16.0, // Tamaño de fuente más pequeño
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              '12K',
                                              style: TextStyle(
                                                fontSize: 16.0, // Tamaño de fuente más pequeño
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              width: 48,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black,
                                              ),
                                              child: Center(
                                                child: FaIcon(
                                                  FontAwesomeIcons.github,
                                                  size: 24,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                                height: 12.0), // Aumenta la separación inferior
                                            Text(
                                              'Proyectos',
                                              style: TextStyle(
                                                fontSize: 16.0, // Tamaño de fuente más pequeño
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              '12',
                                              style: TextStyle(
                                                fontSize: 16.0, // Tamaño de fuente más pequeño
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              width: 48,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue,
                                              ),
                                              child: Center(
                                                child: FaIcon(
                                                  FontAwesomeIcons.linkedin,
                                                  size: 24,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                                height: 12.0), // Aumenta la separación inferior
                                            Text(
                                              'Contactos',
                                              style: TextStyle(
                                                fontSize: 16.0, // Tamaño de fuente más pequeño
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              '122',
                                              style: TextStyle(
                                                fontSize: 16.0, // Tamaño de fuente más pequeño
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: circleRadius,
                      height: circleRadius,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 8.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Center(
                          child: Container(
                            child: Icon(
                              Icons.person,
                              size: 80,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
