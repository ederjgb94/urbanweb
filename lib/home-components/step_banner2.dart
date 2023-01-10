import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepbanner_ extends StatelessWidget {
  final BoxConstraints constraints;
  const Stepbanner_({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth > 1200 ? 1400 : constraints.maxWidth,
      height: 400,
      child: Stack(
        children: [
          constraints.maxWidth > 1200
              ? Positioned(
                  right: 0,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 120, left: 400, right: 120),
                    height: 400,
                    width: 1300,
                    child: Text(
                      'A través de medios multimedia, hacemos la presentación de nuestra propuesta arquitectónica, la cual podrá ser modificada en varias ocasiones hasta que sea de su plena satisfacción.\n\n• Presentación del anteproyecto\n• Modificaciones en vivo\n• Entrega del presupuesto inicial',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w300,
                      ),
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
                    'A través de medios multimedia, hacemos la presentación de nuestra propuesta arquitectónica, la cual podrá ser modificada en varias ocasiones hasta que sea de su plena satisfacción.\n\n• Presentación del anteproyecto\n• Modificaciones en vivo\n• Entrega del presupuesto inicial',
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
                top: 30, left: constraints.maxWidth > 1200 ? 400 : 50),
            child: Text(
              '2°',
              style: TextStyle(
                color: Color(0xff1A928C),
                fontSize: 80,
                fontFamily: 'Lato',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 70, left: constraints.maxWidth > 1200 ? 500 : 180),
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
            padding: EdgeInsets.only(
                top: 60, left: constraints.maxWidth > 1200 ? 630 : 300),
            child: Text(
              'Presentación del Anteproyecto',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: constraints.maxWidth > 1200 ? 30 : 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600),
            ),
          ),
          constraints.maxWidth > 1200
              ? Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: SvgPicture.asset(
                    'images/inicio/segunda_reunion_urban.svg',
                    width: 350,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
