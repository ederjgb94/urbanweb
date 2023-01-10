import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Encabezado extends StatelessWidget {
  final BoxConstraints constraints;
  final String image = 'images/inicio/proyectos_arquitectonicos.webp';

  const Encabezado({Key? key, required this.constraints}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      height: 500,
      // padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            bottom: -300,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              width: constraints.maxWidth,
              height: 800,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 150,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '¿CUÁL ES NUESTRO PROCESO DE TRABAJO?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: constraints.maxWidth > 1200 ? 58 : 24,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(8, 5),
                      blurRadius: 8.0,
                      color: Color.fromARGB(255, 53, 53, 53),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 280,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth > 1200 ? 200 : 20),
              child: Text(
                'La comunicación y su tiempo son muy importantes, por lo que mantenemos una relación estrecha con nuestros clientes, transparentando nuestros procesos, generando confianza, dentro de un marco de honestidad y trabajo en equipo.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: constraints.maxWidth > 1200 ? 26 : 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w300,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(8, 5),
                      blurRadius: 8.0,
                      color: Color.fromARGB(255, 53, 53, 53),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
