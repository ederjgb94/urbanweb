import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeNosotros extends StatelessWidget {
  final BoxConstraints constraints;
  const HomeNosotros({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      color: Colors.white,
      child: Stack(
        children: [
          constraints.maxWidth > 1200
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'images/inicio/urban.svg',
                    height: constraints.maxWidth > 1200 ? 533 : 300,
                  ),
                )
              : SizedBox(),
          Container(
            height: 533,
            width: constraints.maxWidth,
            // padding: EdgeInsets.only(top: 200),
            // alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NOSOTROS',
                  style: TextStyle(
                    color: Color(0xff2E8D80),
                    fontSize: constraints.maxWidth > 1200 ? 150 : 60,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(8, 5),
                        blurRadius: 8.0,
                        color: Color.fromARGB(255, 170, 170, 170),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  width: 900,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: constraints.maxWidth > 1200 ? 26 : 20,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w300,
                      ),
                      children: [
                        TextSpan(text: 'Somos un despacho de '),
                        TextSpan(
                            text: 'Arquitectura y Construcción Residencial',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(text: ', con más de '),
                        TextSpan(
                            text: '25 años de experiencia',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(
                            text:
                                ' en el mercado, nos enfocamos en desarrollar '),
                        TextSpan(
                            text: 'espacios a la medida',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(text: ' con la más '),
                        TextSpan(
                            text: 'alta calidad',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(
                            text:
                                '. Nuestra sede se ubica en Santiago de Querétaro, con cobertura nacional.'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
