import 'package:cross_fade/cross_fade.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class Obras extends StatefulWidget {
  final BoxConstraints constraints;

  Obras({Key? key, required this.constraints}) : super(key: key);

  @override
  State<Obras> createState() => _ObrasState();
}

class _ObrasState extends State<Obras> {
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
          fontSize: 22,
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
          fontSize: 22,
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
          fontSize: 22,
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

  List<Widget> izquierda = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //obra 3
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Pisos de cerámica',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Lato',
              ),
            ),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Chapas de puertas de pomo',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Sockets cerámicos',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Aluminio natural cristal 3 mm',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Puerta principal de pino',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //obra 3
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Pisos de cerámica gran formato',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Lato',
              ),
            ),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Chapas de puertas de pomo',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Spot de luz',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Calentador 38 litros',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tinaco capacidad 750 litros',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Aluminio natural cristal 6 mm',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Canceles de baño de policarbonato',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Barandales de acero',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //obra 3
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Pisos de porcelanato',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Lato',
              ),
            ),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Chapas de puertas de palanca',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Spot de luz con foco de led',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Calentador de paso',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tinaco capacidad 1,100 litros',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Aluminio brillante cristal 6 mm',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Canceles para baño de cristal templado',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Barandales de cristal templado',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Puerta principal de alta seguridad',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
            SizedBox(width: 5),
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
          ],
        ),
      ],
    ),
  ];

  List<Widget> derecha = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
            SizedBox(width: 5),
            Text('WC taza-tanque ',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
          ],
        ),
        Row(
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
        Row(
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
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Text('Mueble de lavabo con ovalín y cubierta de mdf',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Lato',
                  )),
            ),
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       height: 2,
        //       width: 30,
        //       color: Color(0xff2E8D80),
        //     ),
        //     SizedBox(width: 5),
        //     Text('de mdf',
        //         style: TextStyle(
        //           fontSize: 18,
        //           fontFamily: 'Lato',
        //         )),
        //   ],
        // ),
        Row(
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
        Row(
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
        Row(
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
        Row(
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
        Row(
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
        Row(
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
      ],
    ),
    //obra 3
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 2,
              width: 30,
              color: Color(0xff2E8D80),
            ),
            SizedBox(width: 5),
            Text('Mueble de lavabo con ovalín\ny cubierta de mármol',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                )),
          ],
        ),
        Row(
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
        Row(
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
        Row(
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
        Row(
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
        Row(
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
        Row(
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
      ],
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
      height: 800,
      width: widget.constraints.maxWidth,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 120,
            child: Container(
              width: 1200,
              height: 530,
              padding: EdgeInsets.only(top: 65, left: 50, right: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xffCFCFCF),
              ),
              child: Column(
                children: [
                  CrossFade<int>(
                    value: _current,
                    // highlightDuration: Duration(milliseconds: 1200),
                    // curve: Curves.easeInOut,
                    builder: (context, i) => textos[i],
                  ), //de
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CrossFade<int>(
                          value: _current,
                          curve: Curves.easeInOut,
                          builder: (context, i) => izquierda[i],
                        ), //derecha
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Positioned(
                            //   child: widget.etapas[_current],
                            // ),
                            // Positioned(
                            //   child: SvgPicture.asset(
                            //     etapas[_current],
                            //     height: 300,
                            //   ),
                            // ),
                            Positioned(
                              child: CrossFade<int>(
                                value: _current,
                                curve: Curves.easeInOut,
                                builder: (context, i) => SvgPicture.asset(
                                  etapas[i],
                                  height: 180,
                                ),
                              ),
                            ),
                            Positioned(
                              child: CrossFade<int>(
                                value: _current,
                                curve: Curves.easeInOut,
                                builder: (context, i) => SvgPicture.asset(
                                  cetapas[i],
                                  height: 330,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: CrossFade<int>(
                          value: _current,
                          curve: Curves.easeInOut,
                          builder: (context, i) => derecha[i],
                        ), //derecha
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -45,
                    child: Transform.rotate(
                      angle: -math.pi / 4,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        width: _current == 0 ? 30 : 0,
                        height: _current == 0 ? 30 : 0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -15,
                    child: Transform.rotate(
                      angle: -math.pi / 4,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        width: _current == 0 ? 30 : 0,
                        height: _current == 0 ? 30 : 0,
                        color: Color(0xff2E8D80),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _current = 0;
                      });
                    },
                    color:
                        _current == 0 ? Color(0xff2E8D80) : Color(0xffCFCFCF),
                    child: Text(
                      'BÁSICOS',
                      style: TextStyle(
                        color: _current == 0 ? Colors.white : Colors.black,
                        fontSize: 22,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                  ),
                ],
              ),
              const SizedBox(
                width: 60,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -45,
                    child: Transform.rotate(
                      angle: -math.pi / 4,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        width: _current == 1 ? 30 : 0,
                        height: _current == 1 ? 30 : 0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -15,
                    child: Transform.rotate(
                      angle: -math.pi / 4,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        width: _current == 1 ? 30 : 0,
                        height: _current == 1 ? 30 : 0,
                        color: Color(0xff2E8D80),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _current = 1;
                      });
                    },
                    color:
                        _current == 1 ? Color(0xff2E8D80) : Color(0xffCFCFCF),
                    child: Text(
                      'INTERMEDIOS',
                      style: TextStyle(
                        color: _current == 1 ? Colors.white : Colors.black,
                        fontSize: 22,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                  ),
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -45,
                    child: Transform.rotate(
                      angle: -math.pi / 4,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        width: _current == 2 ? 30 : 0,
                        height: _current == 2 ? 30 : 0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -15,
                    child: Transform.rotate(
                      angle: -math.pi / 4,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        width: _current == 2 ? 30 : 0,
                        height: _current == 2 ? 30 : 0,
                        color: Color(0xff2E8D80),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _current = 2;
                      });
                    },
                    color:
                        _current == 2 ? Color(0xff2E8D80) : Color(0xffCFCFCF),
                    child: Text(
                      'RESIDENCIALES',
                      style: TextStyle(
                        color: _current == 2 ? Colors.white : Colors.black,
                        fontSize: 22,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
