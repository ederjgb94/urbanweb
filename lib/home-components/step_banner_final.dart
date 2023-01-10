import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stepbannerfinal extends StatelessWidget {
  final BoxConstraints constraints;
  const Stepbannerfinal({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      height: 230,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -10,
            bottom: -10,
            child: Container(
              width: 1200,
              height: 230,
              color: Color(0xff1A928C),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            height: 230,
            width: 1200,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '- Tiempos estimado para la elaboración del proyecto arquitectónico: 1 mes\n- Tiempos estimado para la gestión de permisos: 2 meses\n- Tiempos estimado para la ejecución de la obra: 6 meses\n\nDichos tiempos variaran dependiendo de la complejidad del proyecto.',
              style: TextStyle(
                color: Colors.black,
                fontSize: constraints.maxWidth > 1200 ? 24 : 18,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          constraints.maxWidth > 1200
              ? Positioned(
                  right: -6,
                  top: 0,
                  bottom: -42,
                  child: SvgPicture.asset(
                    'images/inicio/reloj_Mesa_de_trabajo_1.svg',
                    width: 200,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
