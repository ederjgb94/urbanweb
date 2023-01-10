import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urbanweb/ContactPage.dart';
import 'package:urbanweb/buttonNavBar.dart';
import 'package:urbanweb/homepage.dart';
import 'package:urbanweb/main.dart';
import 'package:urbanweb/portafolio_desktop.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context, constraint) {
        return constraint.maxWidth > 1200
            ? Container(
                width: constraint.maxWidth,
                height: 80,
                color: const Color.fromRGBO(0, 0, 0, 0.70),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartPage()));
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
                        titulo: 'PORTAFOLIO',
                        accion: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LiveGridExample(),
                            ),
                          );
                        }),
                    ButtonNavBar(
                        titulo: 'TALLERES',
                        accion: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyApp(),
                            ),
                          );
                        }),
                    ButtonNavBar(
                        titulo: 'CONTACTO',
                        accion: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ContactPage(title: 'CONTACTO'),
                            ),
                          );
                        }),
                    const SizedBox(
                      width: 60,
                    ),
                  ],
                ),
              )
            : Container(
                height: 80,
                color: Colors.grey.shade400,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartPage()));
                      },
                      child: Container(
                        width: 130,
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
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Arquitectura\ny Construcción',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontFamily: 'Lato', fontSize: 18),
                    ),
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        int x = -1;
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        InkWell(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(18),
                                            topRight: Radius.circular(18),
                                          ),
                                          onTap: () async {
                                            x = 1;
                                            Navigator.pop(context);
                                            // await Future.delayed(
                                            //     Duration(milliseconds: 400));
                                            Navigator.pushReplacement(
                                                c,
                                                MaterialPageRoute(
                                                    builder: (c) =>
                                                        LiveGridExample()));
                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 20,
                                            ),
                                            child: Text(
                                              'PORTAFOLIO',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Lato',
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            // x = 2;
                                            Navigator.pop(context);
                                            // await Future.delayed(
                                            //     Duration(milliseconds: 400));
                                            Navigator.pushReplacement(
                                              c,
                                              MaterialPageRoute(
                                                builder: (c) => const MyApp(),
                                              ),
                                            );
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 20,
                                            ),
                                            child: Text(
                                              'TALLERES',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Lato',
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            // x = 3;
                                            // Navigator.pop(context, x);
                                            Navigator.pop(context);
                                            // await Future.delayed(
                                            //     Duration(milliseconds: 400));
                                            Navigator.pushReplacement(
                                              c,
                                              MaterialPageRoute(
                                                builder: (c) =>
                                                    const ContactPage(
                                                        title: 'CONTACTO'),
                                              ),
                                            );
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
                                                color: Colors.white,
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
                            }).then((x) async {
                          if (x == 1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StartPage(),
                              ),
                            );
                          } else if (x == 2) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyApp(),
                              ),
                            );
                          } else if (x == 3) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContactPage(
                                    title: 'CONTACTO', key: UniqueKey()),
                              ),
                            );
                          }
                        });
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
                    )
                  ],
                ),
              );
      },
    );
  }
}
