import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:urbanweb/buttonNavBar.dart';
import 'package:urbanweb/home-components/abanner.dart';
import 'package:urbanweb/home-components/cbanner.dart';
import 'package:urbanweb/home-components/encabezado.dart';
import 'package:urbanweb/home-components/especificaciones.dart';
import 'package:urbanweb/home-components/footer.dart';
import 'package:urbanweb/home-components/nosotros.dart';
import 'package:urbanweb/home-components/obras.dart';
import 'package:urbanweb/home-components/obras_movil.dart';
import 'package:urbanweb/home-components/step_banner.dart';
import 'package:urbanweb/home-components/step_banner2.dart';
import 'package:urbanweb/home-components/step_banner3.dart';
import 'package:urbanweb/home-components/step_banner_final.dart';
import 'package:urbanweb/rlbutton.dart';
import 'package:urbanweb/topbar.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _current = 0;
  Key _textKey = GlobalKey();

  final CarouselController _carouselController = CarouselController();

  final images = [
    'images/carousel-inicio/contruccion_hogar.webp',
    'images/carousel-inicio/calidad_arquitectura.webp',
    'images/carousel-inicio/espacio_inteligente.webp',
    'images/carousel-inicio/impermeabilizante.webp',
    'images/carousel-inicio/talleres_carpinteria_herreria_canceles.webp',
    'images/carousel-inicio/hogar_innovacion.webp',
  ];

  final images_text = [
    'Construya a su gusto y ahorre un 25% con nosotros',
    'Contrato de obra y garantía por escrito',
    'Arquitectura de vanguardia, eficiente y sustentable',
    'Servicio profesional en pintura e impermeabilización',
    'Talleres de acabados finos: Carpintería, Cancelería y Herrería',
    'Arquitectura y Construcción a la medida de su presupuesto'
  ];
  // final PageController _pageController =
  //     PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: TopBar(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Column(
            children: [
              // const TopBar(),
              Container(
                color: const Color(0xff191919),
                height: 20,
              ),
              Stack(
                children: [
                  CarouselSlider(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height - 120,
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                          _textKey = UniqueKey();
                        });
                      },
                    ),
                    items: images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return DelayedDisplay(
                            slidingBeginOffset: const Offset(0.0, 0.1),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                i,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      child: AnimatedSmoothIndicator(
                        activeIndex: _current,
                        count: 6,
                        onDotClicked: (index) =>
                            _carouselController.animateToPage(index,
                                duration: Duration(milliseconds: 800),
                                curve: Curves.fastOutSlowIn),
                        effect: WormEffect(
                          activeDotColor: Colors.white,
                          dotHeight: 9,
                          dotWidth: 9,
                          paintStyle: PaintingStyle.stroke,
                          // strokeWidth: 5,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    key: _textKey,
                    bottom: 160,
                    left: 0,
                    right: 0,
                    child: DelayedDisplay(
                      slidingBeginOffset: const Offset(0.0, 0.2),
                      delay: Duration(milliseconds: 400),
                      fadingDuration: Duration(milliseconds: 400),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          images_text[_current],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            letterSpacing: 1,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(5.0, 5.0),
                                blurRadius: 8.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (constraints.maxWidth > 1200)
                    Positioned(
                      right: 0,
                      child: RLButton(
                          constraints: constraints,
                          direction: 0,
                          accion: () {
                            _carouselController.nextPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.fastOutSlowIn);
                          }),
                    ),
                  if (constraints.maxWidth > 1200)
                    Positioned(
                      left: 0,
                      child: RLButton(
                          constraints: constraints,
                          direction: 2,
                          accion: () {
                            _carouselController.previousPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.fastOutSlowIn);
                          }),
                    ),
                ],
              ),
              Container(
                color: Color(0xff191919),
                height: 20,
              ),
              HomeNosotros(
                constraints: constraints,
              ),
              Container(
                color: const Color(0xff191919),
                height: 20,
              ),
              Abanner(constraints: constraints),
              Cbanner(constraints: constraints),
              Container(
                color: const Color(0xff191919),
                height: 10,
              ),
              Encabezado(
                constraints: constraints,
              ),
              Stepbanner(
                constraints: constraints,
              ),
              Container(
                color: const Color(0xff191919),
                height: 51,
              ),
              Stepbanner_(
                constraints: constraints,
              ),
              Container(
                color: const Color(0xff191919),
                height: 51,
              ),
              Stepbanner__(
                constraints: constraints,
              ),
              Container(
                color: const Color(0xff191919),
                height: 51,
              ),
              Stepbannerfinal(
                constraints: constraints,
              ),
              Container(
                color: const Color(0xff191919),
                height: 172,
              ),
              HomeEspecificaciones(constraints: constraints),
              constraints.maxWidth > 1200
                  ? Obras(
                      constraints: constraints,
                    )
                  : ObrasMovil(constraints: constraints),
              Container(
                padding: EdgeInsets.only(bottom: 40),
                color: Colors.white,
                width: constraints.maxWidth,
                child: HomeFooter(),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
