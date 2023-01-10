import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:urbanweb/rlbutton.dart';
import 'dart:html' as html;
import 'package:urbanweb/topbar.dart';

class CarouselPortafolio extends StatefulWidget {
  final int itemIndex;
  const CarouselPortafolio({
    Key? key,
    required this.itemIndex,
  }) : super(key: key);

  @override
  _CarouselPortafolioState createState() => _CarouselPortafolioState();
}

class _CarouselPortafolioState extends State<CarouselPortafolio> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;
  Key _textKey = GlobalKey();
  int _current2 = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                // height: MediaQuery.of(context).size.height - 120,
                height: constraints.maxHeight,
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                    _textKey = UniqueKey();
                  });
                },
              ),
              items: List.generate(3, (index) => index).map((i) {
                int x = widget.itemIndex * 3;
                _current2 = _current2 + 1;
                _current2 = _current2 % 3;
                x = x + _current2;
                return Builder(
                  builder: (BuildContext context) {
                    return DelayedDisplay(
                      slidingBeginOffset: const Offset(0.0, 0.1),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'images/sub-portafolio/$x.jpeg',
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
                  count: 3,
                  onDotClicked: (index) => _carouselController.animateToPage(
                      index,
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
            // Positioned(
            //   key: _textKey,
            //   bottom: 160,
            //   left: 0,
            //   right: 0,
            //   child: DelayedDisplay(
            //     slidingBeginOffset: const Offset(0.0, 0.2),
            //     delay: Duration(milliseconds: 400),
            //     fadingDuration: Duration(milliseconds: 400),
            //     child: Container(
            //       alignment: Alignment.center,
            //       padding: EdgeInsets.symmetric(horizontal: 25),
            //       child: Text(
            //         images_text[_current],
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 36,
            //           letterSpacing: 1,
            //           fontFamily: 'Lato',
            //           fontWeight: FontWeight.w400,
            //           shadows: <Shadow>[
            //             Shadow(
            //               offset: Offset(5.0, 5.0),
            //               blurRadius: 8.0,
            //               color: Color.fromARGB(255, 0, 0, 0),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
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
            TopBar(),
            constraints.maxWidth > 1200
                ? Positioned(
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
                            'URBAN | By ',
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
                              child: SvgPicture.asset(
                                  'images/pie-pagina/email.svg'),
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
                              html.window.open('https://wa.link/ktvkib',
                                  'urbanarquitectura');
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
                              child: SvgPicture.asset(
                                  'images/pie-pagina/tiktok.svg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
