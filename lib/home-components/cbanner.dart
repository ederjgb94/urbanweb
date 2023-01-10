import 'package:flutter/material.dart';

class Cbanner extends StatelessWidget {
  final BoxConstraints constraints;

  final image = 'images/inicio/construccion.webp';

  const Cbanner({Key? key, required this.constraints}) : super(key: key);

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
            left: 0,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth > 1200 ? 200 : 40),
              width: constraints.maxWidth > 1200
                  ? constraints.maxWidth / 5 * 3
                  : constraints.maxWidth,
              height: 588,
              color: Color.fromRGBO(0, 0, 0, 0.7),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'CONSTRUCCIÓN\n\n',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxWidth > 1200 ? 45 : 30,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.normal),
                    ),
                    TextSpan(
                      text: 'Nuestro equipo de ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxWidth > 1200 ? 28 : 18,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: 'expertos en ingeniería civil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth > 1200 ? 28 : 18,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' materializará sus proyectos con técnicas innovadoras, materiales de última generación y con los más altos estándares de calidad, optimizando al máximo su presupuesto.',
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
                  right: -250,
                  left: 0,
                  child: Container(
                    child: Text(
                      'C',
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
