import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepbanner__ extends StatelessWidget {
  final BoxConstraints constraints;
  const Stepbanner__({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth > 1200 ? 1400 : constraints.maxWidth,
      height: 400,
      child: Stack(
        children: [
          constraints.maxWidth > 1200
              ? Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 120, left: 160, right: 350),
                  height: 400,
                  width: 1300,
                  child: Text(
                    'Presentación de la propuesta final, se afinan todos los detalles y se formaliza el compromiso de inicio de obra.\n\n• Presentación del proyecto final\n• Entrega del presupuesto final\n• Firma del contrato de construcción',
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
                    top: 180,
                    right: 20,
                    left: 20,
                  ),
                  height: 400,
                  width: 1300,
                  child: Text(
                    'Presentación de la propuesta final, se afinan todos los detalles y se formaliza el compromiso de inicio de obra.\n\n• Presentación del proyecto final\n• Entrega del presupuesto final\n• Firma del contrato de construcción',
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
              '3°',
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
              'Presentación del Proyecto Final',
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
                    'images/inicio/tercera_reunion_urban.svg',
                    width: 350,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
