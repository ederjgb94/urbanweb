import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:urbanweb/ContactPage.dart';

class MovilApp extends StatefulWidget {
  final BoxConstraints constraints;

  const MovilApp({Key? key, required this.constraints}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MovilAppState();
  }
}

class MovilAppState extends State<MovilApp> {
  final double _SizeAppbar = 80;
  int _indice = 0;
  Key _randomKey = UniqueKey();
  PageController _controller = PageController();
  int _cantidadPages = 3;

  Widget _getMovilTaller(String imagenBase, List<TextSpan> texto) {
    return Container(
      padding: EdgeInsets.only(top: 30, right: 40, left: 40, bottom: 80),
      // alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              // ,
              imagenBase,
            ),
            colorFilter:
                ColorFilter.mode(Colors.grey.shade900, BlendMode.modulate),
            fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              fontFamily: 'Lato',
              height: 1.2,
            ),
            children: texto,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: _SizeAppbar,
        backgroundColor: Colors.grey.shade400,
        leadingWidth: 130,
        leading: InkWell(
          onTap: () {
            _indice = 0;
            setState(() {});
          },
          child: Container(
            color: Colors.grey.shade900,
            padding: EdgeInsets.only(
              top: 15,
              bottom: 15,
            ),
            child: SvgPicture.asset(
              'images/talleres/urbanmovil.svg',
            ),
          ),
        ),
        centerTitle: false,
        foregroundColor: Colors.black,
        title: Text(
          'Arquitectura\ny Construcción',
          textAlign: TextAlign.left,
          style: TextStyle(fontFamily: 'Lato', fontSize: 18),
        ),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (c) {
                    return DelayedDisplay(
                      delay: Duration(milliseconds: 400),
                      slidingBeginOffset: Offset(0, 0.03),
                      fadingDuration: Duration(milliseconds: 400),
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        backgroundColor: Color(0xff212121),
                        contentPadding: EdgeInsets.zero,
                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  topRight: Radius.circular(18),
                                ),
                                onTap: () {
                                  _indice = 0;
                                  Navigator.pop(context);
                                  setState(() {});
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    'TALLERES',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: _indice == 0
                                          ? Color(0xff2EB09C)
                                          : Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _indice = 5;
                                  _cantidadPages = 0;
                                  _randomKey = UniqueKey();
                                  Navigator.pop(context);
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    'CONTACTO',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: _indice == 5
                                          ? Color(0xff2EB09C)
                                          : Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 0.5,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                color: Colors.white,
                              ),
                              InkWell(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(18),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    'Cancelar',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
              // Navigator.push(context, MaterialPageRoute(builder: (c) {
              //   return Scaffold(
              //     backgroundColor: Colors.grey.shade900,
              //     appBar: AppBar(
              //       backgroundColor: Colors.transparent,
              //       automaticallyImplyLeading: false,
              //       elevation: 0,
              //       toolbarHeight: 76,
              //       actions: [
              //         Container(
              //           padding: EdgeInsets.only(
              //             right: 18,
              //           ),
              //           child: IconButton(
              //             onPressed: () {
              //               Navigator.pop(context);
              //             },
              //             icon: Icon(
              //               CupertinoIcons.clear,
              //               size: 28,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //     body: Center(
              //       child: SingleChildScrollView(
              //         child: Column(
              //           mainAxisSize: MainAxisSize.max,
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           crossAxisAlignment: CrossAxisAlignment.stretch,
              //           children: [
              //             InkWell(
              //               onTap: () {
              //                 _indice = 0;
              //                 Navigator.pop(context);
              //                 setState(() {});
              //               },
              //               child: Padding(
              //                 padding: EdgeInsets.only(
              //                   left: 40,
              //                   top: 20,
              //                   bottom: 20,
              //                 ),
              //                 child: Text(
              //                   'TALLERES',
              //                   style: TextStyle(
              //                     fontFamily: 'Lato',
              //                     color: _indice == 0
              //                         ? Color(0xff2EB09C)
              //                         : Colors.white,
              //                     fontSize: 28,
              //                     fontWeight: FontWeight.w300,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             InkWell(
              //               onTap: () {
              //                 _indice = 5;
              //                 _cantidadPages = 0;
              //                 _randomKey = UniqueKey();
              //                 Navigator.pop(context);
              //                 setState(() {});
              //               },
              //               child: Padding(
              //                 padding: EdgeInsets.only(
              //                   left: 40,
              //                   top: 20,
              //                   bottom: 20,
              //                 ),
              //                 child: Text(
              //                   'CONTACTO',
              //                   style: TextStyle(
              //                     fontFamily: 'Lato',
              //                     color: _indice == 5
              //                         ? Color(0xff2EB09C)
              //                         : Colors.white,
              //                     fontSize: 28,
              //                     fontWeight: FontWeight.w300,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   );
              // }));
            },
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 60,
              child: Icon(
                Icons.menu,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            key: _randomKey,
            child: DelayedDisplay(
              slidingCurve: Curves.ease,
              slidingBeginOffset: const Offset(0.0, 0.05),
              delay: Duration(milliseconds: 200),
              child: Container(
                child: _indice == 1
                    ? Container(
                        color: Colors.white,
                        width: widget.constraints.maxWidth,
                        height: widget.constraints.maxHeight,
                        child: PageView(
                          scrollBehavior: AppScrollBehavior(),
                          controller: _controller,
                          children: [
                            _getMovilTaller(
                                'images/talleresm/canceleria/canceleria-de-diseno.webp',
                                [
                                  const TextSpan(
                                    text: 'Cancelería\nde Diseño\n\n',
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const TextSpan(text: 'Proveemos '),
                                  const TextSpan(
                                      text:
                                          'cancelería de aluminio, PVC y cristal templado',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700)),
                                  const TextSpan(
                                      text:
                                          ' de la más alta calidad y buen gusto, con diseños elegantes y funcionales, creando ambientes únicos tanto en fachadas como en interiores.\n\n'),
                                  const TextSpan(
                                      text:
                                          'Satisfacemos sus necesidades residenciales y comerciales, tanto '),
                                  const TextSpan(
                                      text:
                                          'para proyectos individuales como producción en serie para proyectos a gran escala.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700)),
                                ]),
                            _getMovilTaller(
                                'images/talleres/canceleria/imagenes/canceleria-de-aluminio.webp',
                                [
                                  const TextSpan(
                                    text: 'Cancelería\nen Aluminio\n\n',
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: 'Expertos en cancelería de aluminio ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  const TextSpan(
                                      text:
                                          'nacional, así como certificados en la fabricación de cancelería Eurovent, para crear lo que su obra requiere, utilizando cristales claros, oscurecidos y templados.'),
                                ]),
                            _getMovilTaller(
                                'images/talleres/canceleria/imagenes/canceleria-de-pvc.webp',
                                [
                                  const TextSpan(
                                    text: 'Cancelería\nen PVC\n\n',
                                    style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: 'Canceles ',
                                  ),
                                  const TextSpan(
                                      text: 'fabricados bajo normas europeas ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700)),
                                  const TextSpan(
                                    text:
                                        'con perfiles alemanes de PVC, de doble cristal y herrajes perimetrales. Permiten crear ',
                                  ),
                                  const TextSpan(
                                      text: 'ambientes confortables ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700)),
                                  const TextSpan(
                                    text:
                                        'totalmente herméticos, protegidos de factores ambientales como el ruido y el clima.',
                                  ),
                                ]),
                          ],
                        ),
                      )
                    : _indice == 2
                        ? Container(
                            color: Colors.white,
                            width: widget.constraints.maxWidth,
                            height: widget.constraints.maxHeight,
                            child: PageView(
                              scrollBehavior: AppScrollBehavior(),
                              controller: _controller,
                              children: [
                                _getMovilTaller(
                                    'images/talleresm/carpinteria/carpinteria-fina.webp',
                                    [
                                      const TextSpan(
                                        text: 'Carpintería\nFina\n\n',
                                        style: TextStyle(
                                          // color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const TextSpan(
                                          text:
                                              'Expertos carpinteros y ebanistas materializarán diseños exclusivos ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          )),
                                      const TextSpan(
                                          text:
                                              'que nuestros arquitectos especializados en mobiliario realicen en base a sus gustos y necesidades, superando ampliamente sus expectativas.'),
                                    ]),
                                _getMovilTaller(
                                    'images/talleresm/carpinteria/carpinteria-en-melamina.webp',
                                    [
                                      const TextSpan(
                                        text:
                                            'Carpintería en\nmelamina - MDF\n\n',
                                        style: TextStyle(
                                          // color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const TextSpan(
                                          text:
                                              'Ofrecemos soluciones integrales ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          )),
                                      const TextSpan(
                                          text:
                                              'a particulares y empresas constructoras diseñando y fabricando toda la carpintería que un nuevo proyecto requiere, minimizando el tiempo de entrega.\n\n'),
                                      const TextSpan(
                                          text:
                                              'Fabricamos entre otras cosas, '),
                                      const TextSpan(
                                          text:
                                              'cocinas integrales, closet, vestidores, muebles de lavabo, alacenas, recamaras integrales.',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          )),
                                    ]),
                                _getMovilTaller(
                                    'images/talleresm/carpinteria/carpinteria-madera.webp',
                                    [
                                      const TextSpan(
                                        text: 'Carpintería\nen madera\n\n',
                                        style: TextStyle(
                                          // color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const TextSpan(
                                          text:
                                              'Nuestros artesanos darán forma a maderas finas, nacionales e importadas, creando piezas únicas, '),
                                      const TextSpan(
                                          text:
                                              'cuidando con especial atención los detalles ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          )),
                                      const TextSpan(
                                          text: 'y acabados finales.\n\n'),
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
                                    ]),
                              ],
                            ),
                          )
                        : _indice == 3
                            ? Container(
                                color: Colors.white,
                                width: widget.constraints.maxWidth,
                                height: widget.constraints.maxHeight,
                                child: PageView(
                                  scrollBehavior: AppScrollBehavior(),
                                  controller: _controller,
                                  children: [
                                    _getMovilTaller(
                                        'images/talleresm/herreria/herreria-artistica.webp',
                                        [
                                          const TextSpan(
                                            text: 'Herrería\nArtística\n\n',
                                            style: TextStyle(
                                              // color: Colors.white,
                                              fontSize: 32,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const TextSpan(
                                              text:
                                                  'Nuestro equipo de arte diseña con profesionalismo '),
                                          const TextSpan(
                                              text:
                                                  'piezas únicas y exclusivas, ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700)),
                                          const TextSpan(
                                              text:
                                                  'que después finos artesanos '),
                                          const TextSpan(
                                            text: 'trabajarán a detalle ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const TextSpan(
                                            text:
                                                'con técnicas antiguas de forja combinadas con soldadura moderna creando bellas obras de arte en hierro, las cuales ',
                                          ),
                                          const TextSpan(
                                              text:
                                                  'harán lucir cualquier espacio en su hogar.',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700)),
                                        ]),
                                    _getMovilTaller(
                                        'images/talleresm/herreria/herreria-tradicional.webp',
                                        [
                                          const TextSpan(
                                            text: 'Herrería\ntradicional\n\n',
                                            style: TextStyle(
                                              // color: Colors.white,
                                              fontSize: 32,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const TextSpan(
                                            text: 'Ofrecemos la ',
                                          ),
                                          const TextSpan(
                                            text: 'elegancia y fuerza ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const TextSpan(
                                            text:
                                                'del acero con soldaduras especiales para crear artesanalmente ',
                                          ),
                                          const TextSpan(
                                            text:
                                                'barandales, puertas, protecciones, bardas y portones ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const TextSpan(
                                            text:
                                                'que aportarán la seguridad que usted y su familia necesita.',
                                          ),
                                        ]),
                                    _getMovilTaller(
                                        'images/talleresm/herreria/celosias.webp',
                                        [
                                          const TextSpan(
                                            text: 'Celosías\n\n',
                                            style: TextStyle(
                                              // color: Colors.white,
                                              fontSize: 32,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const TextSpan(
                                            text:
                                                'Las celosías son un elemento arquitectónico que marca una tendencia a nivel mundial. ',
                                          ),
                                          const TextSpan(
                                              text:
                                                  'Diseñamos y fabricamos paneles y celosías metálicas de acero, madera o aluminio ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700)),
                                          const TextSpan(
                                              text:
                                                  'para decorar espacios interiores y exteriores, proporcionando un control de luz, seguridad y belleza decorativa a tu espacio.'),
                                        ]),
                                  ],
                                ),
                              )
                            : _indice == 4
                                ? Container(
                                    color: Colors.white,
                                    width: widget.constraints.maxWidth,
                                    height: widget.constraints.maxHeight,
                                    child: PageView(
                                      scrollBehavior: AppScrollBehavior(),
                                      controller: _controller,
                                      children: [
                                        _getMovilTaller(
                                            'images/talleresm/pintura/impermeabilizantes-min.webp',
                                            [
                                              const TextSpan(
                                                text:
                                                    'Impermeabilizaciones\ny Pintura\n\n',
                                                style: TextStyle(
                                                  // color: Colors.white,
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const TextSpan(
                                                  text: 'Contamos con '),
                                              const TextSpan(
                                                  text:
                                                      'profesionales altamente capacitados ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'para darle la solución definitiva a problemas de pintura y humedad, tanto en el '),
                                              const TextSpan(
                                                  text:
                                                      'ámbito residencial, comercial e industrial, ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'utilizando productos de la más alta calidad lo que nos permite otorgar garantía en todos nuestros servicios.\n\n'),
                                              const TextSpan(
                                                  text: 'Con más de '),
                                              const TextSpan(
                                                  text:
                                                      '20 años de experiencia, ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'nos especializamos en estos 3 tipos de impermeabilizantes:'),
                                            ]),
                                        _getMovilTaller(
                                            'images/talleresm/pintura/impermeabilizacion-acrilico.webp',
                                            [
                                              const TextSpan(
                                                text:
                                                    'Impermeabilizante\nacrílico\n\n',
                                                style: TextStyle(
                                                  // color: Colors.white,
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const TextSpan(text: 'Es un '),
                                              const TextSpan(
                                                  text:
                                                      'recubrimiento impermeable y aislante térmico ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'acrílico elastomérico integral base agua 100% ecológico de aplicación en frío, para proteger la humedad en cualquier superficie horizontal con una pendiente mínima del 2% y en superficies verticales tales como muros y fachadas.\n\n'),
                                              const TextSpan(
                                                  text:
                                                      'Estos productos nos permiten otorgar '),
                                              const TextSpan(
                                                  text:
                                                      'garantías a elegir de 3, 5 y 8 años, ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'en colores blanco y terracota.'),
                                            ]),
                                        _getMovilTaller(
                                            'images/talleresm/pintura/impermeabilizacion-prefabricado.webp',
                                            [
                                              const TextSpan(
                                                text:
                                                    'Impermeabilizante\nprefabricado\n\n',
                                                style: TextStyle(
                                                  // color: Colors.white,
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const TextSpan(text: 'Es un '),
                                              const TextSpan(
                                                  text:
                                                      'sistema impermeable laminar prefabricado de alto desempeño ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'compuesto por una malla de fibra de vidrio o poliéster a escoger, cubierto en ambas caras por una película de asfalto modificado con polímero estireno-butadieno-estireno (SBS), de aplicación en caliente.\n\n'),
                                              const TextSpan(
                                                  text: 'Este sistema ofrece '),
                                              const TextSpan(
                                                  text:
                                                      'espesores desde 3.0 mm a 5.0 mm ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'con garantías que van desde los '),
                                              const TextSpan(
                                                  text: '3 hasta los 12 años, ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'es ideal para prácticamente cualquier superficie horizontal con pendiente mínima del 2%.'),
                                            ]),
                                        _getMovilTaller(
                                            'images/talleresm/pintura/rmeabilizacion-nanotecnologico.webp',
                                            [
                                              const TextSpan(
                                                text:
                                                    'Impermeabilizante\nnanotecnológico\n\n',
                                                style: TextStyle(
                                                  // color: Colors.white,
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const TextSpan(
                                                  text:
                                                      'Es un repelente de líquidos de penetración profunda y repelente solar UV 100% ecológico y orgánico a base de microcristales líquidos, '),
                                              const TextSpan(
                                                  text:
                                                      'nanotecnología de última generación. ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'Las partículas entran por los poros y se fusionan con la superficie volviéndose parte de la estructura atómica del sustrato.\n\n'),
                                              const TextSpan(
                                                  text:
                                                      'Sellan prácticamente cualquier superficie horizontal y vertical, de secado rápido y resultados inmediatos. Su aplicación es por aspersión y tiene una '),
                                              const TextSpan(
                                                  text:
                                                      'durabilidad de 25 años.',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ]),
                                        _getMovilTaller(
                                            'images/talleresm/pintura/pintura.webp',
                                            [
                                              const TextSpan(
                                                text:
                                                    'Pintura residencial\ny comercial\n\n',
                                                style: TextStyle(
                                                  // color: Colors.white,
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const TextSpan(
                                                  text:
                                                      'Personal capacitado en diferentes técnicas solucionarán sus trabajos de '),
                                              const TextSpan(
                                                  text:
                                                      'pintura residencial comercial e industrial ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              const TextSpan(
                                                  text:
                                                      'de cualquier magnitud, optimizando los materiales y realizando el servicio en un mínimo de tiempo.\n\n'),
                                              const TextSpan(
                                                  text: 'Damos servicio a: '),
                                              const TextSpan(
                                                  text:
                                                      'casas, edificios, plazas comerciales, estructuras metálicas y naves industriales.',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700)),
                                            ]),
                                      ],
                                    ),
                                  )
                                : _indice == 5
                                    ? ContactPage(title: 'ALgo')
                                    : Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              _indice = 1;
                                              _cantidadPages = 3;
                                              _randomKey = UniqueKey();
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: (widget.constraints
                                                          .maxHeight -
                                                      _SizeAppbar) /
                                                  4,
                                              width:
                                                  widget.constraints.maxWidth,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'images/menu-talleres/movil/canceleria-de-diseno-m.webp',
                                                  ),
                                                  colorFilter: ColorFilter.mode(
                                                      Colors.grey.shade800,
                                                      BlendMode.modulate),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Cancelería de Diseño',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Lato',
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              _indice = 2;
                                              _cantidadPages = 3;
                                              _randomKey = UniqueKey();
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: (widget.constraints
                                                          .maxHeight -
                                                      _SizeAppbar) /
                                                  4,
                                              width:
                                                  widget.constraints.maxWidth,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'images/menu-talleres/movil/carpinteria-fina-m.webp',
                                                  ),
                                                  colorFilter: ColorFilter.mode(
                                                      Colors.grey.shade800,
                                                      BlendMode.modulate),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Carpintería Fina',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Lato',
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              _indice = 3;
                                              _cantidadPages = 3;
                                              _randomKey = UniqueKey();
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: (widget.constraints
                                                          .maxHeight -
                                                      _SizeAppbar) /
                                                  4,
                                              width:
                                                  widget.constraints.maxWidth,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'images/menu-talleres/movil/herreria-artistica-m.webp',
                                                  ),
                                                  colorFilter: ColorFilter.mode(
                                                      Colors.grey.shade800,
                                                      BlendMode.modulate),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Herrería Artística',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Lato',
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              _indice = 4;
                                              _cantidadPages = 5;
                                              _randomKey = UniqueKey();
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: (widget.constraints
                                                          .maxHeight -
                                                      _SizeAppbar) /
                                                  4,
                                              width:
                                                  widget.constraints.maxWidth,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'images/menu-talleres/movil/impermeabilizacion-y-pintura-m.webp',
                                                  ),
                                                  colorFilter: ColorFilter.mode(
                                                      Colors.grey.shade800,
                                                      BlendMode.modulate),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Impermeabilizaciones y Pintura',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Lato',
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          // InkWell(
                                          //   onTap: () {
                                          //     _indice = 5;
                                          //     _cantidadPages = 0;
                                          //     _randomKey = UniqueKey();
                                          //     setState(() {});
                                          //   },
                                          //   child: Container(
                                          //     height: (widget.constraints
                                          //                 .maxHeight -
                                          //             _SizeAppbar) /
                                          //         5,
                                          //     width:
                                          //         widget.constraints.maxWidth,
                                          //     decoration: BoxDecoration(
                                          //       image: DecorationImage(
                                          //         image: AssetImage(
                                          //           'images/menu-talleres/movil/contacto-m.webp',
                                          //         ),
                                          //         colorFilter: ColorFilter.mode(
                                          //             Colors.grey.shade800,
                                          //             BlendMode.modulate),
                                          //         fit: BoxFit.cover,
                                          //       ),
                                          //     ),
                                          //     child: Center(
                                          //       child: Text(
                                          //         'Contacto',
                                          //         style: TextStyle(
                                          //           color: Colors.white,
                                          //           fontFamily: 'Lato',
                                          //           fontSize: 16,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          // ),
                                        ],
                                      ),
              ),
            ),
          ),
          Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: _indice > 0 && _indice != 5
                  ? Container(
                      alignment: Alignment.center,
                      child: SmoothPageIndicator(
                          controller: _controller, // PageController
                          count: _cantidadPages,
                          effect: WormEffect(
                            activeDotColor: Color(0xff2EB09C),
                          ), // your preferred effect
                          onDotClicked: (index) {}),
                    )
                  : SizedBox())
        ],
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
