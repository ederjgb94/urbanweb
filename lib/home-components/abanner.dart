import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class Abanner extends StatelessWidget {
  final BoxConstraints constraints;

  final image = 'images/inicio/arquitectura.webp';

  const Abanner({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: constraints.maxWidth,
            height: 588,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth > 1200 ? 200 : 40),
              width: constraints.maxWidth > 1200
                  ? constraints.maxWidth / 5 * 3
                  : constraints.maxWidth,
              height: 588,
              color: Color.fromRGBO(0, 0, 0, 0.8),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'ARQUITECTURA\n\n',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxWidth > 1200 ? 45 : 30,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.normal),
                    ),
                    TextSpan(
                      text:
                          'Elaboramos propuestas arquitectónicas enfocadas a satisfacer sus necesidades, ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxWidth > 1200 ? 28 : 18,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text:
                          'creando espacios inteligentes y funcionales con diseños únicos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth > 1200 ? 28 : 18,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' y amigables con el medio ambiente. Aprovechamos al máximo las características geográficas del espacio de construcción.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth > 1200 ? 28 : 18,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          constraints.maxWidth > 1200
              ? Positioned(
                  bottom: -130,
                  right: 0,
                  left: -250,
                  child: Container(
                    child: Text(
                      'A',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 500,
                        fontFamily: 'Bodin',
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
