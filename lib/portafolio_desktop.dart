import 'dart:math';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urbanweb/topbar.dart';
import 'dart:html' as html;

import 'portafolio-components/carousel_portafolio.dart';

class LiveGridExample extends StatefulWidget {
  const LiveGridExample({
    Key? key,
  }) : super(key: key);
  @override
  _LiveGridExampleState createState() => _LiveGridExampleState();
}

class _LiveGridExampleState extends State<LiveGridExample> {
  int itemsCount = 27;
  int itemtoshadow = -1;
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  EdgeInsets soytop(int index, BoxConstraints constraints) {
    double padd = 300;
    if (constraints.maxWidth > 1200) {
      if (index == 0) return EdgeInsets.only(top: padd);
      if (index == 1) return EdgeInsets.only(top: padd);
      if (index == 2) return EdgeInsets.only(top: padd);
    } else if (constraints.maxWidth > 800) {
      if (index == 0) return EdgeInsets.only(top: padd);
      if (index == 1) return EdgeInsets.only(top: padd);
    } else {
      if (index == 0) return EdgeInsets.only(top: padd);
    }
    return EdgeInsets.zero;
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: SafeArea(
            child: LayoutBuilder(
              builder: (c, constraints) => Stack(
                children: [
                  CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: constraints.maxWidth > 1200 ? 0 : 100),
                        ),
                      ),
                      LiveSliverGrid(
                        controller: scrollController,
                        // padding: EdgeInsets.all(16),
                        showItemInterval: Duration(milliseconds: 100),
                        showItemDuration: Duration(milliseconds: 300),
                        visibleFraction: 0.001,
                        itemCount: itemsCount,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: constraints.maxWidth > 1200
                              ? 3
                              : constraints.maxWidth > 800
                                  ? 2
                                  : 1,
                          // crossAxisSpacing: 16,
                          // mainAxisSpacing: 16,
                        ),
                        itemBuilder: animationItemBuilder(
                          (index) => InkWell(
                            onHover: (v) {
                              setState(() {
                                itemtoshadow = v ? index : -1;
                              });
                            },
                            onTap: () {
                              // Navigator.pushReplacement(
                              //     context,
                              //     PageRouteBuilder(
                              //       pageBuilder: (context, animation,
                              //               secondaryAnimation) =>
                              //           CarouselPortafolio(
                              //         itemIndex: index,
                              //       ),
                              //       transitionsBuilder: (context, animation,
                              //           secondaryAnimation, child) {
                              //         var begin = Offset(0.0, 1.0);
                              //         var end = Offset.zero;
                              //         var curve = Curves.ease;
                              //         var tween = Tween(begin: begin, end: end)
                              //             .chain(CurveTween(curve: curve));
                              //         return SlideTransition(
                              //           position: animation.drive(tween),
                              //           child: child,
                              //         );
                              //       },
                              //     ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    colorFilter: itemtoshadow == index
                                        ? ColorFilter.mode(
                                            Colors.black.withOpacity(0.5),
                                            BlendMode.darken)
                                        : null,
                                    image: AssetImage(
                                      'images/portafolio/' +
                                          index.toString() +
                                          '.webp',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Positioned(
                  //   bottom: 20,
                  //   left: 40,
                  //   right: 40,
                  //   child: Container(
                  //     child: Row(
                  //       mainAxisSize: MainAxisSize.min,
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         const Text(
                  //           'URBAN | By ',
                  //           style: TextStyle(
                  //             fontFamily: 'Raleway',
                  //             fontSize: 18,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.w300,
                  //           ),
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             html.window.open(
                  //                 'https://www.facebook.com/Nextiart-316612351829354/',
                  //                 'NextiArt');
                  //           },
                  //           child: const Text(
                  //             'Nextiart.',
                  //             style: TextStyle(
                  //               fontFamily: 'Raleway',
                  //               fontSize: 22,
                  //               fontWeight: FontWeight.w500,
                  //               color: Color(0xff2EB09C),
                  //             ),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 20,
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             html.window.open(
                  //                 'mailto: info@urbanarquitectura.com.mx',
                  //                 'urbanarquitectura');
                  //           },
                  //           child: Container(
                  //             width: 32,
                  //             height: 32,
                  //             child: SvgPicture.asset(
                  //                 'images/pie-pagina/email.svg'),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             html.window
                  //                 .open('tel:4427086211', 'urbanarquitectura');
                  //           },
                  //           child: Container(
                  //             width: 32,
                  //             height: 32,
                  //             child: SvgPicture.asset(
                  //                 'images/pie-pagina/telefono.svg'),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             html.window.open('https://wa.link/ktvkib',
                  //                 'urbanarquitectura');
                  //           },
                  //           child: Container(
                  //             width: 32,
                  //             height: 32,
                  //             child: SvgPicture.asset(
                  //                 'images/pie-pagina/whatsapp.svg'),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             html.window.open(
                  //                 'https://www.facebook.com/UrbanArquitecturaConstruccion/',
                  //                 'urbanarquitectura');
                  //           },
                  //           child: Container(
                  //             width: 32,
                  //             height: 32,
                  //             child: SvgPicture.asset(
                  //                 'images/pie-pagina/facebook.svg'),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             html.window.open(
                  //                 'https://www.instagram.com/urbanarquitectura.com.mx/?hl=es-la',
                  //                 'urbanarquitectura');
                  //           },
                  //           child: Container(
                  //             width: 32,
                  //             height: 32,
                  //             child: SvgPicture.asset(
                  //                 'images/pie-pagina/instagram.svg'),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             html.window.open(
                  //                 'https://www.tiktok.com/@urbanarquitectura',
                  //                 'urbanarquitectura');
                  //           },
                  //           child: Container(
                  //             width: 32,
                  //             height: 32,
                  //             child: SvgPicture.asset(
                  //                 'images/pie-pagina/tiktok.svg'),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  TopBar(),
                ],
              ),
            ),
          ),
        ),
      );
}

class VerticalItem extends StatelessWidget {
  const VerticalItem({
    Key? key,
  }) : super(key: key);

  final String title = "";

  @override
  Widget build(BuildContext context) => Container(
        height: 96,
        child: Card(
          child: Text(
            '$title a long title',
            style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
          ),
        ),
      );
}

class HorizontalItem extends StatelessWidget {
  const HorizontalItem({
    Key? key,
  }) : super(key: key);

  final String title = "";

  @override
  Widget build(BuildContext context) => Container(
        width: 140,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Material(
            color: Colors.white,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
        ),
      );
}

/// Wrap Ui item with animation & padding
Widget Function(
  BuildContext context,
  int index,
  Animation<double> animation,
) animationItemBuilder(
  Widget Function(int index) child, {
  EdgeInsets padding = EdgeInsets.zero,
}) =>
    (
      BuildContext context,
      int index,
      Animation<double> animation,
    ) =>
        FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, -0.1),
              end: Offset.zero,
            ).animate(animation),
            child: Padding(
              padding: padding,
              child: child(index),
            ),
          ),
        );

Widget Function(
  BuildContext context,
  Animation<double> animation,
) animationBuilder(
  Widget child, {
  double xOffset = 0,
  EdgeInsets padding = EdgeInsets.zero,
}) =>
    (
      BuildContext context,
      Animation<double> animation,
    ) =>
        FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(xOffset, 0.1),
              end: Offset.zero,
            ).animate(animation),
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        );
