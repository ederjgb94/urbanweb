import 'package:cross_fade/cross_fade.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class ObrasMovil extends StatefulWidget {
  final BoxConstraints constraints;

  ObrasMovil({Key? key, required this.constraints}) : super(key: key);

  @override
  State<ObrasMovil> createState() => _ObrasMovilState();
}

class _ObrasMovilState extends State<ObrasMovil> {
  int _current = 0;

  final List<String> etapas = [
    'images/inicio/basico.svg',
    'images/inicio/intermedio.svg',
    'images/inicio/residencial.svg',
  ];
  final List<String> cetapas = [
    'images/inicio/cbasico.svg',
    'images/inicio/cintermedio.svg',
    'images/inicio/cresidencial.svg',
  ];
  List<Widget> textos = [
    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w300,
        ),
        children: [
          TextSpan(text: 'Su hogar estará '),
          TextSpan(
              text: 'equipado con lo indispensable',
              style: TextStyle(fontWeight: FontWeight.w700)),
          TextSpan(
              text: ' para poderlo habitar, siempre con la disponibilidad de '),
          TextSpan(
              text: 'cambiar y/o agregar',
              style: TextStyle(fontWeight: FontWeight.w700)),
          TextSpan(text: ' cualquier acabado a su gusto.'),
        ],
      ),
    ),
    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w300,
        ),
        children: [
          TextSpan(text: 'Su hogar tendra un '),
          TextSpan(
              text: 'toque de personalidad único y elegante',
              style: TextStyle(fontWeight: FontWeight.w700)),
          TextSpan(
              text:
                  ' resaltando zonas\nde su construcción con materiales exclusivos.'),
        ],
      ),
    ),
    //obra 3
    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w300,
        ),
        children: [
          TextSpan(text: 'Cuidaremos '),
          TextSpan(
              text: 'cada detalle de su construcción,',
              style: TextStyle(fontWeight: FontWeight.w700)),
          TextSpan(
              text:
                  ' los materiales serán elegidos con delicadeza para lograr este toque especial que desea para su hogar.'),
        ],
      ),
    ),
  ];

  @override
  void didChangeDependencies() {
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, etapas[0]),
      null,
    );
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, etapas[1]),
      null,
    );
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, etapas[2]),
      null,
    );
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, cetapas[0]),
      null,
    );
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, cetapas[1]),
      null,
    );
    precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoderBuilder, cetapas[2]),
      null,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            child: Text(
              'BÁSICOS',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                color: Color(0xff2E8D80),
              ),
            ),
            padding: EdgeInsets.only(top: 20),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: textos[0],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Lavabo y pedestal',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Chapas de puertas de pomo',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Sockets cerámicos',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Aluminio natural cristal 3 mm',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Puerta principal de pino',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Lavabo y pedestal',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('WC taza-tanque',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Pintura calidad 3 años',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Imper acrílico 3 años',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          SvgPicture.asset(etapas[0]),
          SizedBox(height: 20),
          Padding(
            child: Text(
              'INTERMEDIOS',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                color: Color(0xff2E8D80),
              ),
            ),
            padding: EdgeInsets.only(top: 20),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: textos[1],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Pisos de cerámica gran formato',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Chapas de puertas de pomo',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Spot de luz',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Calentador 38 litros',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Tinaco capacidad 750 litros',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Aluminio natural cristal 6 mm',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Canceles de baño de policarbonato',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Barandales de acero',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Mueble de lavabo con ovalín y cubierta de mdf',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('WC taza-tanque',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Cubierta de cocina de melamina',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Tarja de cocina sencilla',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Carpintería completa',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Pintura calidad 5 años',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Imper acrílico 5 años',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          SvgPicture.asset(etapas[1]),
          SizedBox(height: 20),
          Padding(
            child: Text(
              'RESIDENCIALES',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                color: Color(0xff2E8D80),
              ),
            ),
            padding: EdgeInsets.only(top: 20),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: textos[2],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Pisos de porcelanato',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Chapas de puertas de palanca',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Spot de luz con foco de led',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Calentador de paso',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Tinaco capacidad 1,100 litros',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Aluminio brillante cristal 6 mm',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Canceles para baño de cristal templado',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Barandales de cristal templado',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Puerta principal de alta seguridad',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Jardín con pasto kikuyo',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Mueble de lavabo con ovalín y cubierta de mármol',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Wc one piece',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Cubierta de cocina de granito',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Tarja de cocina doble',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Carpintería completa',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Pintura calidad 7 años',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 30,
                  color: Color(0xff2E8D80),
                ),
                SizedBox(width: 5),
                Text('Imper acrílico 7 años',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lato',
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          SvgPicture.asset(etapas[2]),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
