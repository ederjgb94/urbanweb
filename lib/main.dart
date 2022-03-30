import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:urbanweb/ContactPage.dart';
import 'package:urbanweb/buttonNavBar.dart';
import 'package:urbanweb/movil.dart';
import 'package:urbanweb/portafolio_desktop.dart';
import 'package:urbanweb/rlbutton.dart';
import 'dart:html' as html;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black, // this one for android
      statusBarBrightness: Brightness.light // this one for iOS
      ));
  runApp(LiveGridExample());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _cantidadDivisiones = 4;
  int _animationMiliseconds = 0;
  int _indiceActivado = -1;
  bool _isanimation = false;
  bool _isbuttonAnimation = false;

  void _setAnimation() {
    _animationMiliseconds = 400;
    Future.delayed(Duration(milliseconds: _animationMiliseconds), () {
      _animationMiliseconds = 0;
    });
  }

  bool _stateButton = false;
  bool _stateButton2 = false;
  bool _stateButton3 = false;
  bool _stateButton4 = false;
  Key _textKey = UniqueKey();
  int _indiceImagen = 0;

  void derecha() {
    _indiceActivado++;
    if (_indiceActivado == 5) _indiceActivado = 1;
    _reset();
  }

  void izquierda() {
    _indiceActivado--;
    if (_indiceActivado == 0) _indiceActivado = 4;
    _reset();
  }

  void _reset() {
    _stateButton = false;
    _stateButton2 = false;
    _stateButton3 = false;
    _stateButton4 = false;
    _indiceImagen = 0;
    _textKey = UniqueKey();
    if (mounted) setState(() {});
  }

  Widget _buttonBanner(List<TextSpan> textoBoton, BoxConstraints constraints) {
    return Positioned(
      bottom: constraints.maxHeight * 0.1,
      left: 600,
      child: DelayedDisplay(
        delay: Duration(milliseconds: 1200),
        child: Container(
          padding: EdgeInsets.only(
            top: 30,
            bottom: 30,
            left: 120,
            right: 180,
          ),
          width: constraints.maxWidth - 600,
          color: const Color.fromRGBO(0, 0, 0, 0.70),
          child: RichText(
            text: TextSpan(
              // text: 'Hello ',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontFamily: 'Lato',
                height: 1.2,
              ),
              children: textoBoton,
            ),
          ),
        ),
      ),
    );
  }

  Widget _generarTaller({
    required BoxConstraints constraints,
    required int indice,
    required String imagenBase,
    required List<String> imagenes,
    required String titulo,
    required List<TextSpan> textoCuerpo,
    required List<TextSpan> textoCuerpo2,
    String tituloBoton = '',
    String tituloBoton2 = '',
    String tituloBoton3 = '',
    String tituloBoton4 = '',
    required List<TextSpan> textoBoton,
    required List<TextSpan> textoBoton2,
    required List<TextSpan> textoBoton3,
    required List<TextSpan> textoBoton4,
  }) {
    return InkWell(
      onTap: _indiceActivado == -1
          ? () {
              if (_isanimation) return;
              _isanimation = true;
              _indiceActivado = indice;
              // _indiceImagen = 0;
              _setAnimation();
              _textKey = UniqueKey();
              setState(() {});
            }
          : null,
      child: AnimatedContainer(
        height: constraints.maxHeight,
        width: _indiceActivado == indice
            ? constraints.maxWidth
            : _indiceActivado == -1
                ? constraints.maxWidth / _cantidadDivisiones
                : 0,
        child: AnimatedCrossFade(
          duration: Duration(milliseconds: _animationMiliseconds),
          firstChild: Stack(
            children: [
              Image.asset(
                imagenBase,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: constraints.maxHeight / 2,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Text(
                    titulo,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
          secondChild: Stack(
            children: [
              imagenes[_indiceImagen].isNotEmpty
                  ? Image.asset(
                      imagenes[_indiceImagen],
                      // _indiceImagen == 0
                      //     ? 'images/talleres/canceleria/imagenes/canceleria-de-diseno.webp'
                      //     : _indiceImagen == 1
                      //         ? 'images/talleres/canceleria/imagenes/canceleria-de-aluminio.webp'
                      //         : 'images/talleres/canceleria/imagenes/canceleria-de-pvc.webp',
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      fit: BoxFit.cover,
                    )
                  : SizedBox(),
              _stateButton
                  ? DelayedDisplay(
                      delay: Duration(milliseconds: 500),
                      child: Image.asset(
                        imagenes[1],
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        fit: BoxFit.cover,
                      ),
                    )
                  : SizedBox(),
              _stateButton2
                  ? DelayedDisplay(
                      delay: Duration(milliseconds: 500),
                      child: Image.asset(
                        imagenes[2],
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        fit: BoxFit.cover,
                      ),
                    )
                  : SizedBox(),
              _stateButton3 && tituloBoton3.isNotEmpty
                  ? DelayedDisplay(
                      delay: Duration(milliseconds: 500),
                      child: Image.asset(
                        imagenes[3],
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        fit: BoxFit.cover,
                      ),
                    )
                  : SizedBox(),
              _stateButton4 && tituloBoton4.isNotEmpty
                  ? DelayedDisplay(
                      delay: Duration(milliseconds: 500),
                      child: Image.asset(
                        imagenes[4],
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        fit: BoxFit.cover,
                      ),
                    )
                  : SizedBox(),
              Container(
                key: _textKey,
                height: constraints.maxHeight,
                width: 600,
                color: Color.fromRGBO(0, 0, 0, 0.6),
                child: DelayedDisplay(
                  slidingBeginOffset: const Offset(0.0, 0.08),
                  delay: Duration(milliseconds: _animationMiliseconds + 200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 111,
                        ),
                        child: Text(
                          titulo,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 111,
                        ),
                        child: RichText(
                          text: TextSpan(
                            // text: 'Hello ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lato',
                              height: 1.2,
                            ),
                            children: textoCuerpo,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 111,
                        ),
                        child: RichText(
                          text: TextSpan(
                            // text: 'Hello ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Lato',
                              height: 1.2,
                            ),
                            children: textoCuerpo2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 101),
                        child: InkWell(
                          onTap: () async {
                            if (_isbuttonAnimation) return;
                            _stateButton = true;
                            _stateButton2 = false;
                            _stateButton3 = false;
                            _stateButton4 = false;
                            _isbuttonAnimation = true;
                            setState(() {});
                            await Future.delayed(Duration(milliseconds: 1300));
                            _indiceImagen = 1;
                            _isbuttonAnimation = false;
                          },
                          child: AnimatedContainer(
                            padding: EdgeInsets.all(10),
                            duration: Duration(milliseconds: 300),
                            decoration: BoxDecoration(
                                color: _stateButton
                                    ? Color.fromRGBO(46, 178, 159, 0.3)
                                    : Colors.transparent),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: tituloBoton,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Lato',
                                  ),
                                ),
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 10,
                                )),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 101),
                        child: InkWell(
                          onTap: () async {
                            if (_isbuttonAnimation) return;
                            _stateButton2 = true;
                            _stateButton = false;
                            _stateButton3 = false;
                            _stateButton4 = false;
                            _isbuttonAnimation = true;
                            setState(() {});
                            await Future.delayed(Duration(milliseconds: 1300));
                            _indiceImagen = 2;
                            _isbuttonAnimation = false;
                          },
                          child: AnimatedContainer(
                            padding: EdgeInsets.all(10),
                            duration: Duration(milliseconds: 300),
                            decoration: BoxDecoration(
                                color: _stateButton2
                                    ? Color.fromRGBO(46, 178, 159, 0.3)
                                    : Colors.transparent),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: tituloBoton2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Lato',
                                  ),
                                ),
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 10,
                                )),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ),
                      tituloBoton3.isNotEmpty
                          ? Padding(
                              padding: EdgeInsets.only(left: 101),
                              child: InkWell(
                                onTap: () async {
                                  if (_isbuttonAnimation) return;
                                  _stateButton2 = false;
                                  _stateButton = false;
                                  _stateButton3 = true;
                                  _stateButton4 = false;
                                  _isbuttonAnimation = true;
                                  setState(() {});
                                  await Future.delayed(
                                      Duration(milliseconds: 1300));
                                  _indiceImagen = 3;
                                  _isbuttonAnimation = false;
                                },
                                child: AnimatedContainer(
                                  padding: EdgeInsets.all(10),
                                  duration: Duration(milliseconds: 300),
                                  decoration: BoxDecoration(
                                      color: _stateButton3
                                          ? Color.fromRGBO(46, 178, 159, 0.3)
                                          : Colors.transparent),
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: tituloBoton3,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Lato',
                                        ),
                                      ),
                                      WidgetSpan(
                                          child: SizedBox(
                                        width: 10,
                                      )),
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(),
                      tituloBoton4.isNotEmpty
                          ? Padding(
                              padding: EdgeInsets.only(left: 101),
                              child: InkWell(
                                onTap: () async {
                                  if (_isbuttonAnimation) return;
                                  _stateButton2 = false;
                                  _stateButton = false;
                                  _stateButton3 = false;
                                  _stateButton4 = true;
                                  _isbuttonAnimation = true;
                                  setState(() {});
                                  await Future.delayed(
                                      Duration(milliseconds: 1300));
                                  _indiceImagen = 4;
                                  _isbuttonAnimation = false;
                                },
                                child: AnimatedContainer(
                                  padding: EdgeInsets.all(10),
                                  duration: Duration(milliseconds: 300),
                                  decoration: BoxDecoration(
                                      color: _stateButton4
                                          ? Color.fromRGBO(46, 178, 159, 0.3)
                                          : Colors.transparent),
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: tituloBoton4,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'Lato',
                                        ),
                                      ),
                                      WidgetSpan(
                                          child: SizedBox(
                                        width: 10,
                                      )),
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
              _stateButton
                  ? _buttonBanner(textoBoton, constraints)
                  : const SizedBox(),
              _stateButton2
                  ? _buttonBanner(textoBoton2, constraints)
                  : const SizedBox(),
              _stateButton3
                  ? _buttonBanner(textoBoton3, constraints)
                  : const SizedBox(),
              _stateButton4
                  ? _buttonBanner(textoBoton4, constraints)
                  : const SizedBox(),
              Positioned(
                child: RLButton(
                  constraints: constraints,
                  direction: 2,
                  accion: () {
                    izquierda();
                  },
                ),
              ),
              Positioned(
                right: 0,
                child: RLButton(
                  constraints: constraints,
                  direction: 0,
                  accion: () {
                    derecha();
                  },
                ),
              ),
            ],
          ),
          crossFadeState: _indiceActivado == indice
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
        ),
        duration: Duration(milliseconds: _animationMiliseconds),
      ),
    );
  }

  bool _contactoActivado = false;

  Widget _desktop(BoxConstraints constraints) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        _contactoActivado
            ? ContactPage(title: 'Contacto')
            : SingleChildScrollView(
                child: Row(
                  children: [
                    _generarTaller(
                      titulo: 'Cancelería\nde Diseño',
                      constraints: constraints,
                      indice: 1,
                      imagenBase:
                          'images/menu-talleres/canceleria-de-diseno-menu.webp',
                      imagenes: [
                        'images/talleres/canceleria/imagenes/canceleria-de-diseno.webp',
                        'images/talleres/canceleria/imagenes/canceleria-de-aluminio.webp',
                        'images/talleres/canceleria/imagenes/canceleria-de-pvc.webp',
                        '',
                        '',
                      ],
                      textoCuerpo: [
                        const TextSpan(text: 'Proveemos '),
                        const TextSpan(
                            text:
                                'cancelería de aluminio, PVC y cristal templado',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                ' de la más alta calidad y buen gusto, con diseños elegantes y funcionales, creando ambientes únicos tanto en fachadas como en interiores.'),
                      ],
                      textoCuerpo2: [
                        const TextSpan(
                            text:
                                'Satisfacemos sus necesidades residenciales y comerciales, tanto '),
                        const TextSpan(
                            text:
                                'para proyectos individuales como producción en serie para proyectos a gran escala.',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                      ],
                      tituloBoton: 'Cancelería en Aluminio',
                      textoBoton: [
                        const TextSpan(
                          text: 'Expertos en cancelería de aluminio ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        const TextSpan(
                            text:
                                'nacional, así como certificados en la fabricación de cancelería Eurovent, para crear lo que su obra requiere, utilizando cristales claros, oscurecidos y templados.'),
                      ],
                      tituloBoton2: 'Cancelería en PVC',
                      textoBoton2: [
                        const TextSpan(
                          text: 'Canceles ',
                        ),
                        const TextSpan(
                            text: 'fabricados bajo normas europeas ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                          text:
                              'con perfiles alemanes de PVC, de doble cristal y herrajes perimetrales. Permiten crear ',
                        ),
                        const TextSpan(
                            text: 'ambientes confortables ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                          text:
                              'totalmente herméticos, protegidos de factores ambientales como el ruido y el clima.',
                        ),
                      ],
                      tituloBoton3: '',
                      textoBoton3: [],
                      tituloBoton4: '',
                      textoBoton4: [],
                    ),
                    _generarTaller(
                      titulo: 'Carpintería\nFina',
                      constraints: constraints,
                      indice: 2,
                      imagenBase: 'images/menu-talleres/carpinteria-fina.webp',
                      imagenes: [
                        'images/talleres/carpinteria/imagenes/carpinteria-fina.webp',
                        'images/talleres/carpinteria/imagenes/carpinteria-mdf.webp',
                        'images/talleres/carpinteria/imagenes/carpinteria-madera.webp',
                        '',
                        '',
                      ],
                      textoCuerpo: [
                        const TextSpan(
                            text:
                                'Expertos carpinteros y ebanistas materializarán diseños exclusivos ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            )),
                        const TextSpan(
                            text:
                                'que nuestros arquitectos especializados en mobiliario realicen en base a sus gustos y necesidades, superando ampliamente sus expectativas.'),
                      ],
                      textoCuerpo2: [],
                      tituloBoton: 'Carpintería en melamina - MDF',
                      textoBoton: [
                        const TextSpan(
                            text: 'Ofrecemos soluciones integrales ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            )),
                        const TextSpan(
                            text:
                                'a particulares y empresas constructoras diseñando y fabricando toda la carpintería que un nuevo proyecto requiere, minimizando el tiempo de entrega.\n\n'),
                        const TextSpan(text: 'Fabricamos entre otras cosas, '),
                        const TextSpan(
                            text:
                                'cocinas integrales, closet, vestidores, muebles de lavabo, alacenas, recamaras integrales.',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                      tituloBoton2: 'Carpintería en madera',
                      textoBoton2: [
                        const TextSpan(
                            text:
                                'Nuestros artesanos darán forma a maderas finas, nacionales e importadas, creando piezas únicas, '),
                        const TextSpan(
                            text:
                                'cuidando con especial atención los detalles ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            )),
                        const TextSpan(text: 'y acabados finales.\n\n'),
                        const TextSpan(text: 'Especialistas en '),
                        const TextSpan(
                            text: 'diseño y fabricación ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            )),
                        const TextSpan(text: 'a la medida de '),
                        const TextSpan(
                            text:
                                'puertas principales, mobiliario residencial y de oficina.',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                      tituloBoton3: '',
                      textoBoton3: [],
                      tituloBoton4: '',
                      textoBoton4: [],
                    ),
                    _generarTaller(
                      titulo: 'Herrería\nArtística',
                      constraints: constraints,
                      indice: 3,
                      imagenBase:
                          'images/menu-talleres/herreria-artistica.webp',
                      imagenes: [
                        'images/talleres/herreria/imagenes/herreria-artistica.webp',
                        'images/talleres/herreria/imagenes/herreria-tradicional.webp',
                        'images/talleres/herreria/imagenes/celosias.webp',
                        '',
                        '',
                      ],
                      textoCuerpo: [
                        const TextSpan(
                            text:
                                'Nuestro equipo de arte diseña con profesionalismo '),
                        const TextSpan(
                            text: 'piezas únicas y exclusivas, ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(text: 'que después finos artesanos '),
                        const TextSpan(
                          text: 'trabajarán a detalle ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        const TextSpan(
                          text:
                              'con técnicas antiguas de forja combinadas con soldadura moderna creando bellas obras de arte en hierro, las cuales ',
                        ),
                        const TextSpan(
                            text: 'harán lucir cualquier espacio en su hogar.',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                      ],
                      textoCuerpo2: [],
                      tituloBoton: 'Herrería tradicional',
                      textoBoton: [
                        const TextSpan(
                          text: 'Ofrecemos la ',
                        ),
                        const TextSpan(
                          text: 'elegancia y fuerza ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        const TextSpan(
                          text:
                              'del acero con soldaduras especiales para crear artesanalmente ',
                        ),
                        const TextSpan(
                          text:
                              'barandales, puertas, protecciones, bardas y portones ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        const TextSpan(
                          text:
                              'que aportarán la seguridad que usted y su familia necesita.',
                        ),
                      ],
                      tituloBoton2: 'Celosías',
                      textoBoton2: [
                        const TextSpan(
                          text:
                              'Las celosías son un elemento arquitectónico que marca una tendencia a nivel mundial. ',
                        ),
                        const TextSpan(
                            text:
                                'Diseñamos y fabricamos paneles y celosías metálicas de acero, madera o aluminio ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'para decorar espacios interiores y exteriores, proporcionando un control de luz, seguridad y belleza decorativa a tu espacio.'),
                      ],
                      tituloBoton3: '',
                      textoBoton3: [],
                      tituloBoton4: '',
                      textoBoton4: [],
                    ),
                    _generarTaller(
                      titulo: 'Impermeabilizaciones\ny Pintura',
                      constraints: constraints,
                      indice: 4,
                      imagenBase:
                          'images/menu-talleres/impermeabilizante-y-pintura.webp',
                      imagenes: [
                        'images/talleres/pintura/imagenes/impermeabilizacion-y-pintura.webp',
                        'images/talleres/pintura/imagenes/impermeabilizacion-acrilico.webp',
                        'images/talleres/pintura/imagenes/impermeabilizacion-prefabricado.webp',
                        'images/talleres/pintura/imagenes/permeabilizacion-nanotecnologico.webp',
                        'images/talleres/pintura/imagenes/pintura.webp',
                      ],
                      textoCuerpo: [
                        const TextSpan(text: 'Contamos con '),
                        const TextSpan(
                            text: 'profesionales altamente capacitados ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'para darle la solución definitiva a problemas de pintura y humedad, tanto en el '),
                        const TextSpan(
                            text:
                                'ámbito residencial, comercial e industrial, ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'utilizando productos de la más alta calidad lo que nos permite otorgar garantía en todos nuestros servicios.'),
                      ],
                      textoCuerpo2: [
                        const TextSpan(text: 'Con más de '),
                        const TextSpan(
                            text: '20 años de experiencia, ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'nos especializamos en estos 3 tipos de impermeabilizantes:'),
                      ],
                      tituloBoton: 'Impermeabilizante acrílico',
                      textoBoton: [
                        const TextSpan(text: 'Es un '),
                        const TextSpan(
                            text:
                                'recubrimiento impermeable y aislante térmico ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'acrílico elastomérico integral base agua 100% ecológico de aplicación en frío, para proteger la humedad en cualquier superficie horizontal con una pendiente mínima del 2% y en superficies verticales tales como muros y fachadas.\n\n'),
                        const TextSpan(
                            text: 'Estos productos nos permiten otorgar '),
                        const TextSpan(
                            text: 'garantías a elegir de 3, 5 y 8 años, ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(text: 'en colores blanco y terracota.'),
                      ],
                      tituloBoton2: 'Impermeabilizante prefabricado',
                      textoBoton2: [
                        const TextSpan(text: 'Es un '),
                        const TextSpan(
                            text:
                                'sistema impermeable laminar prefabricado de alto desempeño ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'compuesto por una malla de fibra de vidrio o poliéster a escoger, cubierto en ambas caras por una película de asfalto modificado con polímero estireno-butadieno-estireno (SBS), de aplicación en caliente.\n\n'),
                        const TextSpan(text: 'Este sistema ofrece '),
                        const TextSpan(
                            text: 'espesores desde 3.0 mm a 5.0 mm ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text: 'con garantías que van desde los '),
                        const TextSpan(
                            text: '3 hasta los 12 años, ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'es ideal para prácticamente cualquier superficie horizontal con pendiente mínima del 2%.'),
                      ],
                      tituloBoton3: 'Impermeabilizante nanotecnológico',
                      textoBoton3: [
                        const TextSpan(
                            text:
                                'Es un repelente de líquidos de penetración profunda y repelente solar UV 100% ecológico y orgánico a base de microcristales líquidos, '),
                        const TextSpan(
                            text: 'nanotecnología de última generación. ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'Las partículas entran por los poros y se fusionan con la superficie volviéndose parte de la estructura atómica del sustrato.\n\n'),
                        const TextSpan(
                            text:
                                'Sellan prácticamente cualquier superficie horizontal y vertical, de secado rápido y resultados inmediatos. Su aplicación es por aspersión y tiene una '),
                        const TextSpan(
                            text: 'durabilidad de 25 años.',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                      ],
                      tituloBoton4: 'Pintura residencial y comercial',
                      textoBoton4: [
                        const TextSpan(
                            text:
                                'Personal capacitado en diferentes técnicas solucionarán sus trabajos de '),
                        const TextSpan(
                            text: 'pintura residencial comercial e industrial ',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(
                            text:
                                'de cualquier magnitud, optimizando los materiales y realizando el servicio en un mínimo de tiempo.\n\n'),
                        const TextSpan(text: 'Damos servicio a: '),
                        const TextSpan(
                            text:
                                'casas, edificios, plazas comerciales, estructuras metálicas y naves industriales.',
                            style: TextStyle(fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ],
                ),
              ),
        Container(
          width: constraints.maxWidth,
          height: 80,
          color: const Color.fromRGBO(0, 0, 0, 0.70),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () {
                  if (!_isanimation && _contactoActivado) {
                    _contactoActivado = false;
                    setState(() {});
                  }
                  if (!_isanimation) return;
                  _indiceActivado = -1;
                  _isanimation = false;
                  _stateButton = false;
                  _stateButton2 = false;
                  _stateButton3 = false;
                  _stateButton4 = false;
                  _indiceImagen = 0;
                  _contactoActivado = false;
                  _setAnimation();
                  if (mounted) setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SvgPicture.asset(
                    'images/talleres/urbanlogo.svg',
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              ButtonNavBar(
                  titulo: 'TALLERES',
                  accion: () {
                    if (!_isanimation && _contactoActivado) {
                      _contactoActivado = false;
                      setState(() {});
                    }
                    if (!_isanimation) return;
                    _indiceActivado = -1;
                    _isanimation = false;
                    _stateButton = false;
                    _stateButton2 = false;
                    _stateButton3 = false;
                    _stateButton4 = false;
                    _indiceImagen = 0;
                    _contactoActivado = false;
                    _setAnimation();
                    if (mounted) setState(() {});
                  }),
              ButtonNavBar(
                  titulo: 'CONTACTO',
                  accion: () {
                    _contactoActivado = true;
                    setState(() {});
                  }),
              const SizedBox(
                width: 60,
              ),
            ],
          ),
        ),
        _contactoActivado
            ? SizedBox()
            : Positioned(
                bottom: 20,
                left: 40,
                right: 40,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'URBAN 2021 | By ',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          html.window.open(
                              'https://www.facebook.com/Nextiart-316612351829354/',
                              'NextiArt');
                        },
                        child: const Text(
                          'Nextiart.',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2EB09C),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          html.window.open(
                              'mailto: info@urbanarquitectura.com.mx',
                              'urbanarquitectura');
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          child:
                              SvgPicture.asset('images/pie-pagina/email.svg'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          html.window
                              .open('tel:4427086211', 'urbanarquitectura');
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          child: SvgPicture.asset(
                              'images/pie-pagina/telefono.svg'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          html.window.open(
                              'https://wa.link/ktvkib', 'urbanarquitectura');
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          child: SvgPicture.asset(
                              'images/pie-pagina/whatsapp.svg'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          html.window.open(
                              'https://www.facebook.com/UrbanArquitecturaConstruccion/',
                              'urbanarquitectura');
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          child: SvgPicture.asset(
                              'images/pie-pagina/facebook.svg'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          html.window.open(
                              'https://www.instagram.com/urbanarquitectura.com.mx/?hl=es-la',
                              'urbanarquitectura');
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          child: SvgPicture.asset(
                              'images/pie-pagina/instagram.svg'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          html.window.open(
                              'https://www.tiktok.com/@urbanarquitectura',
                              'urbanarquitectura');
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          child:
                              SvgPicture.asset('images/pie-pagina/tiktok.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return constraints.maxWidth > 1200
                ? _desktop(constraints)++

                
                : MovilApp(constraints: constraints);
          },
        ),
      ),
    );
  }
}
