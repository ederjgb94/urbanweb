import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepbanner extends StatelessWidget {
  final BoxConstraints constraints;
  const Stepbanner({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth > 1200 ? 1400 : constraints.maxWidth,
      height: 450,
      child: Stack(
        children: [
          constraints.maxWidth > 1200
              ? Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 120, left: 160, right: 350),
                  height: 450,
                  width: 1300,
                  child: Text(
                    'Documentamos sus necesidades de construcción y presupuesto estimado a invertir y se firma el compromiso de la elaboración del anteproyecto.\n\n• Medidas del terreno\n• Distribución tentativa\n• Estilo arquitectónico\n• Alcances y acabados\n• Firma del contrato del proyecto arquitectónico\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )
              : Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 160,
                    right: 20,
                    left: 20,
                  ),
                  height: 450,
                  width: 1300,
                  child: Text(
                    'Documentamos sus necesidades de construcción y presupuesto estimado a invertir y se firma el compromiso de la elaboración del anteproyecto.\n\n• Medidas del terreno\n• Distribución tentativa\n• Estilo arquitectónico\n• Alcances y acabados\n• Firma del contrato del proyecto arquitectónico\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
          Container(
            padding: EdgeInsets.only(
                top: 30, left: constraints.maxWidth > 1200 ? 90 : 50),
            child: Text(
              '1°',
              style: TextStyle(
                color: Color(0xff1A928C),
                fontSize: 80,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 70, left: 180),
            child: Text(
              'REUNIÓN',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 60, left: 300),
            child: Text(
              'Conocer su Proyecto',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: constraints.maxWidth > 1200 ? 30 : 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600),
            ),
          ),
          constraints.maxWidth > 1200
              ? Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: SvgPicture.asset(
                    'images/inicio/primera_reunion_urban.svg',
                    width: 350,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
