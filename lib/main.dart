import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:delayed_display/delayed_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  GlobalKey _keybutton = GlobalKey();
  GlobalKey _keybutton2 = GlobalKey();
  Key _textKey = UniqueKey();
  int _indiceImagen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: _indiceActivado == -1
                            ? () {
                                if (_isanimation) return;
                                _isanimation = true;
                                _indiceActivado = 1;
                                _indiceImagen = 0;
                                _setAnimation();
                                _textKey = UniqueKey();
                                setState(() {});
                              }
                            : null,
                        child: AnimatedContainer(
                          height: constraints.maxHeight,
                          width: _indiceActivado == 1
                              ? constraints.maxWidth
                              : _indiceActivado == -1
                                  ? constraints.maxWidth / _cantidadDivisiones
                                  : 0,
                          child: AnimatedCrossFade(
                            duration:
                                Duration(milliseconds: _animationMiliseconds),
                            firstChild: Stack(
                              children: [
                                Image.asset(
                                  'images/menu-talleres/canceleria-de-diseno-menu.webp',
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
                                      'Cancelería\nde Diseño',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Lato',
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            secondChild: Stack(
                              children: [
                                Image.asset(
                                  _indiceImagen == 0
                                      ? 'images/talleres/canceleria/imagenes/canceleria-de-diseno.webp'
                                      : _indiceImagen == 1
                                          ? 'images/talleres/canceleria/imagenes/canceleria-de-aluminio.webp'
                                          : 'images/talleres/canceleria/imagenes/canceleria-de-pvc.webp',
                                  height: constraints.maxHeight,
                                  width: constraints.maxWidth,
                                  fit: BoxFit.cover,
                                ),
                                _stateButton
                                    ? DelayedDisplay(
                                        delay: Duration(milliseconds: 500),
                                        child: Image.asset(
                                          'images/talleres/canceleria/imagenes/canceleria-de-aluminio.webp',
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
                                          'images/talleres/canceleria/imagenes/canceleria-de-pvc.webp',
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
                                    delay: Duration(
                                        milliseconds:
                                            _animationMiliseconds + 200),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 111,
                                          ),
                                          child: Text(
                                            'Cancelería\nde Diseño',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 42,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
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
                                                fontSize: 20,
                                                fontWeight: FontWeight.w200,
                                                fontFamily: 'Lato',
                                                height: 1.2,
                                              ),
                                              children: const <TextSpan>[
                                                TextSpan(text: 'Proveemos '),
                                                TextSpan(
                                                    text:
                                                        'cancelería de aluminio, PVC y cristal templado',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                TextSpan(
                                                    text:
                                                        ' de la más alta calidad y buen gusto, con diseños elegantes y funcionales, creando ambientes únicos tanto en fachadas como en interiores.'),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
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
                                                fontSize: 20,
                                                fontWeight: FontWeight.w200,
                                                fontFamily: 'Lato',
                                                height: 1.2,
                                              ),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Satisfacemos sus necesidades residenciales y comerciales, tanto '),
                                                TextSpan(
                                                    text:
                                                        'para proyectos individuales como producción en serie para proyectos a gran escala.',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 80,
                                        ),
                                        Padding(
                                          key: _keybutton,
                                          padding: EdgeInsets.only(left: 101),
                                          child: InkWell(
                                            onTap: () async {
                                              if (_isbuttonAnimation) return;
                                              _stateButton = true;
                                              _stateButton2 = false;
                                              _isbuttonAnimation = true;
                                              setState(() {});
                                              await Future.delayed(
                                                  Duration(milliseconds: 1300));
                                              _indiceImagen = 1;
                                              _isbuttonAnimation = false;
                                            },
                                            child: AnimatedContainer(
                                              padding: EdgeInsets.all(10),
                                              duration:
                                                  Duration(milliseconds: 300),
                                              decoration: BoxDecoration(
                                                  color: _stateButton
                                                      ? Color.fromRGBO(
                                                          46, 178, 159, 0.3)
                                                      : Colors.transparent),
                                              child: Text(
                                                'Cancelería en Aluminio',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          key: _keybutton2,
                                          padding: EdgeInsets.only(left: 101),
                                          child: InkWell(
                                            onTap: () async {
                                              if (_isbuttonAnimation) return;
                                              _stateButton2 = true;
                                              _stateButton = false;
                                              _isbuttonAnimation = true;
                                              setState(() {});
                                              await Future.delayed(
                                                  Duration(milliseconds: 1300));
                                              _indiceImagen = 2;
                                              _isbuttonAnimation = false;
                                            },
                                            child: AnimatedContainer(
                                              padding: EdgeInsets.all(10),
                                              duration:
                                                  Duration(milliseconds: 300),
                                              decoration: BoxDecoration(
                                                  color: _stateButton2
                                                      ? Color.fromRGBO(
                                                          46, 178, 159, 0.3)
                                                      : Colors.transparent),
                                              child: Text(
                                                'Cancelería en PVC',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                _stateButton
                                    ? Positioned(
                                        bottom: constraints.maxHeight * 0.1,
                                        left: 600,
                                        child: DelayedDisplay(
                                          delay: Duration(milliseconds: 1200),
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              top: 35,
                                              bottom: 35,
                                              left: 120,
                                              right: 180,
                                            ),
                                            width: constraints.maxWidth - 600,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.70),
                                            child: RichText(
                                              text: TextSpan(
                                                // text: 'Hello ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w200,
                                                  fontFamily: 'Lato',
                                                  height: 1.2,
                                                ),
                                                children: const <TextSpan>[
                                                  TextSpan(
                                                    text:
                                                        'Expertos en cancelería de aluminio ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                      text:
                                                          'nacional, así como certificados en la fabricación de cancelería Eurovent, para crear lo que su obra requiere, utilizando cristales claros, oscurecidos y templados.'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                                _stateButton2
                                    ? Positioned(
                                        bottom: constraints.maxHeight * 0.1,
                                        left: 600,
                                        child: DelayedDisplay(
                                          delay: Duration(milliseconds: 1200),
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              top: 35,
                                              bottom: 35,
                                              left: 120,
                                              right: 180,
                                            ),
                                            width: constraints.maxWidth - 600,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 0.70),
                                            child: RichText(
                                              text: TextSpan(
                                                // text: 'Hello ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w200,
                                                  fontFamily: 'Lato',
                                                  height: 1.2,
                                                ),
                                                children: const <TextSpan>[
                                                  TextSpan(
                                                    text:
                                                        'Expertos en cancelería de aluminio ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                      text:
                                                          'nacional, así como certificados en la fabricación de cancelería Eurovent, para crear lo que su obra requiere, utilizando cristales claros, oscurecidos y templados.'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                              ],
                            ),
                            crossFadeState: _indiceActivado == 1
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                          ),
                          duration:
                              Duration(milliseconds: _animationMiliseconds),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (_isanimation) return;
                          _isanimation = true;
                          _indiceActivado = 2;
                          _setAnimation();
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          height: constraints.maxHeight,
                          width: _indiceActivado == 2
                              ? constraints.maxWidth
                              : _indiceActivado == -1
                                  ? constraints.maxWidth / _cantidadDivisiones
                                  : 0,
                          child: AnimatedCrossFade(
                            duration:
                                Duration(milliseconds: _animationMiliseconds),
                            firstChild: Image.asset(
                              'images/menu-talleres/carpinteria-fina.webp',
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              fit: BoxFit.cover,
                            ),
                            secondChild: Image.asset(
                              'images/menu-talleres/canceleria-de-diseno-menu.webp',
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              fit: BoxFit.cover,
                            ),
                            crossFadeState: _indiceActivado == 2
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                          ),
                          duration:
                              Duration(milliseconds: _animationMiliseconds),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (_isanimation) return;
                          _isanimation = true;
                          _indiceActivado = 3;
                          _setAnimation();
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          height: constraints.maxHeight,
                          width: _indiceActivado == 3
                              ? constraints.maxWidth
                              : _indiceActivado == -1
                                  ? constraints.maxWidth / _cantidadDivisiones
                                  : 0,
                          child: AnimatedCrossFade(
                            duration:
                                Duration(milliseconds: _animationMiliseconds),
                            firstChild: Image.asset(
                              'images/menu-talleres/herreria-artistica.webp',
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              fit: BoxFit.cover,
                            ),
                            secondChild: Image.asset(
                              'images/menu-talleres/canceleria-de-diseno-menu.webp',
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              fit: BoxFit.cover,
                            ),
                            crossFadeState: _indiceActivado == 3
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                          ),
                          duration:
                              Duration(milliseconds: _animationMiliseconds),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (_isanimation) return;
                          _isanimation = true;
                          _indiceActivado = 3;
                          _setAnimation();
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          height: constraints.maxHeight,
                          width: _indiceActivado == 3
                              ? constraints.maxWidth
                              : _indiceActivado == -1
                                  ? constraints.maxWidth / _cantidadDivisiones
                                  : 0,
                          child: AnimatedCrossFade(
                            duration:
                                Duration(milliseconds: _animationMiliseconds),
                            firstChild: Image.asset(
                              'images/menu-talleres/impermeabilizante-y-pintura.webp',
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              fit: BoxFit.cover,
                            ),
                            secondChild: Image.asset(
                              'images/menu-talleres/canceleria-de-diseno-menu.webp',
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                              fit: BoxFit.cover,
                            ),
                            crossFadeState: _indiceActivado == 3
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                          ),
                          duration:
                              Duration(milliseconds: _animationMiliseconds),
                        ),
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
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SvgPicture.asset(
                          'images/talleres/urbanlogo.svg',
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Text(
                        'TALLERES',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          letterSpacing: 4,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Text(
                        'CONTACTO',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          letterSpacing: 4,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!_isanimation) return;
          _indiceActivado = -1;
          _isanimation = false;
          _stateButton = false;
          _stateButton2 = false;
          _setAnimation();
          if (mounted) setState(() {});
        },
      ),
    );
  }
}
