import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeEspecificaciones extends StatelessWidget {
  final BoxConstraints constraints;
  const HomeEspecificaciones({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: 533,
            padding: EdgeInsets.symmetric(horizontal: 30),
            width: constraints.maxWidth,
            // padding: EdgeInsets.only(top: 200),
            // alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ESPECIFICACIONES DE OBRA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff2E8D80),
                    fontSize: constraints.maxWidth > 1200 ? 67 : 42,
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
                  width: 900,
                  padding: EdgeInsets.only(top: 70),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w300,
                      ),
                      children: [
                        TextSpan(
                            text:
                                'El costo de la construcción variará dependiendo del tipo de obra y de los acabados de la misma. Contamos con un '),
                        TextSpan(
                            text: 'amplio portafolio de materiales',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        TextSpan(
                            text:
                                ' para adaptarnos a sus gustos y maximizar su presupuesto.'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Estos son nuestros acabados:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
