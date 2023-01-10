import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:delayed_display/delayed_display.dart';
import 'dart:html' as html;

import 'package:urbanweb/topbar.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  State<ContactPage> createState() => _ContactPage();
}

class _ContactPage extends State<ContactPage> {
  List<String> opciones = [
    'Cancelería de Diseño',
    'Carpintería Fina',
    'Herrería Artística',
    'Impermeabilización',
    'Pintura',
  ];
  String opcion_seleccionada = "";
  TextEditingController text_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget mail = SvgPicture.asset('images/contacto/iconos/redemail.svg');
    const Widget phone = Icon(Icons.mail);
    const Widget whatsapp = Icon(Icons.mail);
    const Widget facebook = Icon(Icons.mail);
    const Widget instagram = Icon(Icons.mail);
    const Widget tiktok = Icon(Icons.mail);
    const String imgUrl = 'images/menu-talleres/movil/contacto.webp';

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 80),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 1350) {
                  return Row(
                    children: [
                      Image.asset(
                        'images/contacto/imagen/contacto.webp',
                        height: constraints.maxHeight,
                        width: constraints.maxWidth * .4,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth * .6,
                        child: LayoutBuilder(
                          builder: (context, constraints2) {
                            return SingleChildScrollView(
                                padding: EdgeInsets.only(left: 58, right: 58),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 150,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: (constraints2.maxWidth - 116) *
                                              .5,
                                          child: RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w300,
                                                height: 1.5,
                                                color: Colors.black,
                                              ),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Central Park Querétaro',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                TextSpan(
                                                    text:
                                                        '\nAv. Armando Birlain Shaffler No. 2001\nEdificio Corporativo II Piso 14\nCentro Sur C.P. 76090\nSantiago de Querétaro. Querétaro, México'),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                (constraints2.maxWidth - 116) *
                                                    .5,
                                            child: RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Lato',
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.5,
                                                    color: Colors.black),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: 'Tel. Oficina'),
                                                  TextSpan(
                                                      text: ' 442 708 6211',
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              Clipboard.setData(
                                                                      ClipboardData(
                                                                          text:
                                                                              '442 708 6211'))
                                                                  .then(
                                                                      (value) {
                                                                //only if ->
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                        SnackBar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .teal,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          1200),
                                                                  content: Text(
                                                                    'Teléfono Copiado',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                ));
                                                              });
                                                            },
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            46, 176, 156, 1),
                                                      )),
                                                  TextSpan(text: '\nE-mail.'),
                                                  TextSpan(
                                                      text:
                                                          ' info@urbanarquitectura.com.mx',
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              Clipboard.setData(
                                                                      ClipboardData(
                                                                          text:
                                                                              'info@urbanarquitectura.com.mx'))
                                                                  .then(
                                                                      (value) {
                                                                //only if ->
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                        SnackBar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .teal,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          1200),
                                                                  content: Text(
                                                                    'Correo Copiado',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                ));
                                                              });
                                                            },
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            46, 176, 156, 1),
                                                      )),
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 0,
                                          right: 0,
                                          top: 50,
                                          bottom: 50),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              html.window.open(
                                                  'mailto: info@urbanarquitectura.com.mx',
                                                  'urbanarquitectura');
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.all(22.5),
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SvgPicture.asset(
                                                    'images/contacto/iconos/redemail.svg'),
                                                // child: FloatingActionButton(
                                                //   elevation: 0,
                                                //   onPressed: () {},
                                                //   child: mail,
                                                //   backgroundColor:
                                                //       Color.fromRGBO(46, 176, 156, 1),
                                                // ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              html.window.open('tel:4427086211',
                                                  'urbanarquitectura');
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.all(22.5),
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SvgPicture.asset(
                                                    'images/contacto/iconos/redtelefono.svg'),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              html.window.open(
                                                  'https://wa.link/ktvkib',
                                                  'urbanarquitectura');
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.all(22.5),
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SvgPicture.asset(
                                                    'images/contacto/iconos/redwhatsapp.svg'),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              html.window.open(
                                                  'https://www.facebook.com/UrbanArquitecturaConstruccion/',
                                                  'urbanarquitectura');
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.all(22.5),
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SvgPicture.asset(
                                                    'images/contacto/iconos/redfacebook.svg'),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              html.window.open(
                                                  'https://www.instagram.com/urbanarquitectura.com.mx/?hl=es-la',
                                                  'urbanarquitectura');
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.all(22.5),
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SvgPicture.asset(
                                                    'images/contacto/iconos/redinstagram.svg'),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              html.window.open(
                                                  'https://www.tiktok.com/@urbanarquitectura',
                                                  'urbanarquitectura');
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.all(22.5),
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SvgPicture.asset(
                                                    'images/contacto/iconos/redtiktok.svg'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width:
                                              ((constraints2.maxWidth - 116) *
                                                      .5) -
                                                  25,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              filled: true,
                                              fillColor: Color.fromRGBO(
                                                  242, 242, 240, 1),
                                              labelText: 'Nombre',
                                              labelStyle: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  letterSpacing: 1.5),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        SizedBox(
                                          width:
                                              ((constraints2.maxWidth - 116) *
                                                      .5) -
                                                  25,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              filled: true,
                                              fillColor: Color.fromRGBO(
                                                  242, 242, 240, 1),
                                              labelText: 'E-mail',
                                              labelStyle: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  letterSpacing: 1.5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width:
                                              ((constraints2.maxWidth - 116) *
                                                      .5) -
                                                  25,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              filled: true,
                                              fillColor: Color.fromRGBO(
                                                  242, 242, 240, 1),
                                              labelText: 'Teléfono',
                                              labelStyle: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  letterSpacing: 1.5),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showCupertinoDialog(
                                                context: context,
                                                builder: (c) {
                                                  return AlertDialog(
                                                    content: Text('Yes'),
                                                  );
                                                });
                                          },
                                          child: SizedBox(
                                            width:
                                                ((constraints2.maxWidth - 116) *
                                                        .5) -
                                                    25,
                                            child: TextField(
                                              controller: text_controller,
                                              // enabled: false,
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (c) {
                                                      return AlertDialog(
                                                        content: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: opciones
                                                              .map(
                                                                (opt) =>
                                                                    InkWell(
                                                                  onTap: () {
                                                                    opcion_seleccionada =
                                                                        opt;
                                                                    text_controller
                                                                            .text =
                                                                        opt;
                                                                    setState(
                                                                        () {});
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child:
                                                                      ListTile(
                                                                    title: Text(
                                                                        opt),
                                                                  ),
                                                                ),
                                                              )
                                                              .toList(),
                                                        ),
                                                      );
                                                    });
                                              },
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                filled: true,
                                                fillColor: Color.fromRGBO(
                                                    242, 242, 240, 1),
                                                labelText:
                                                    '¿Cuál es su proyecto?',
                                                // label: Text(
                                                //   '¿Cuál es su proyecto?',
                                                //   style: TextStyle(color: Colors.grey.shade700),
                                                // ),
                                                labelStyle: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    letterSpacing: 1.5),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    TextField(
                                      keyboardType: TextInputType.multiline,
                                      minLines: 5,
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(242, 242, 240, 1),
                                        labelText: 'Mensaje',
                                        labelStyle: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            letterSpacing: 1.5),
                                        alignLabelWithHint: true,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(0),
                                      margin: EdgeInsets.all(0),
                                      alignment: Alignment.centerLeft,
                                      child: TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.all(0)),
                                          ),
                                          child: Container(
                                              padding: EdgeInsets.all(0),
                                              margin: EdgeInsets.all(0),
                                              alignment: Alignment.center,
                                              width: 333,
                                              height: 43,
                                              color: Color.fromRGBO(
                                                  128, 128, 128, 1),
                                              child: Text(
                                                'Enviar',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w200,
                                                    letterSpacing: 8),
                                              ))),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5,
                                                  letterSpacing: 2.5,
                                                  color: Colors.black),
                                              children: const <TextSpan>[
                                                TextSpan(text: 'URBAN'),
                                                TextSpan(
                                                    text: '',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Lato',
                                                    )),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Container(
                                              color: Colors.black,
                                              width: 2,
                                              height: 20,
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5,
                                                  letterSpacing: 2.5,
                                                  color: Colors.black),
                                              children: <TextSpan>[
                                                TextSpan(text: 'By'),
                                                TextSpan(
                                                  text: ' Nextiart.',
                                                  style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    fontSize: 14,
                                                    color: Color.fromRGBO(
                                                        46, 176, 156, 1),
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          html.window.open(
                                                              'https://www.facebook.com/Nextiart-316612351829354/',
                                                              'NextiArt');
                                                        },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ));
                          },
                        ),
                      ),
                    ],
                  );
                } else {
                  return ListView(
                    padding: EdgeInsets.only(top: 80),
                    children: [
                      Image.asset(
                        imgUrl,
                        height: 200,
                        width: constraints.maxWidth,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(45, 25, 45, 0),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              height: 1.5,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Central Park Querétaro',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                              TextSpan(
                                  text:
                                      '\nAv. Armando Birlain Shaffler No. 2001\nEdificio Corporativo II Piso 14\nCentro Sur C.P. 76090\nSantiago de Querétaro. Querétaro, México'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(45, 25, 45, 0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w300,
                              height: 1.5,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Tel. Oficina',
                              ),
                              TextSpan(
                                  text: ' 442 708 6211',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Clipboard.setData(ClipboardData(
                                              text: '442 708 6211'))
                                          .then((value) {
                                        //only if ->
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          backgroundColor: Colors.teal,
                                          duration:
                                              Duration(milliseconds: 1200),
                                          content: Text(
                                            'Teléfono Copiado',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ));
                                      });
                                    },
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 176, 156, 1),
                                  )),
                              TextSpan(text: '\nE-mail.'),
                              TextSpan(
                                  text: ' info@urbanarquitectura.com.mx',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Clipboard.setData(ClipboardData(
                                              text:
                                                  'info@urbanarquitectura.com.mx'))
                                          .then((value) {
                                        //only if ->
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          backgroundColor: Colors.teal,
                                          duration:
                                              Duration(milliseconds: 1200),
                                          content: Text(
                                            'Correo Copiado',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ));
                                      });
                                    },
                                  style: TextStyle(
                                    color: Color.fromRGBO(46, 176, 156, 1),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22.5,
                      ),
                      constraints.maxWidth > 700
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    html.window.open(
                                        'mailto: info@urbanarquitectura.com.mx',
                                        'urbanarquitectura');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(22.5),
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SvgPicture.asset(
                                          'images/contacto/iconos/redemail.svg'),
                                      // child: FloatingActionButton(
                                      //   elevation: 0,
                                      //   onPressed: () {},
                                      //   child: mail,
                                      //   backgroundColor:
                                      //       Color.fromRGBO(46, 176, 156, 1),
                                      // ),
                                    ),
                                    // child: FloatingActionButton(
                                    //   elevation: 0,
                                    //   onPressed: () {},
                                    //   child: mail,
                                    //   backgroundColor:
                                    //       Color.fromRGBO(46, 176, 156, 1),
                                    // ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    html.window.open(
                                        'tel:4427086211', 'urbanarquitectura');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(22.5),
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SvgPicture.asset(
                                          'images/contacto/iconos/redtelefono.svg'),
                                      // child: FloatingActionButton(
                                      //   elevation: 0,
                                      //   onPressed: () {},
                                      //   child: mail,
                                      //   backgroundColor:
                                      //       Color.fromRGBO(46, 176, 156, 1),
                                      // ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    html.window.open('https://wa.link/ktvkib',
                                        'urbanarquitectura');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(22.5),
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SvgPicture.asset(
                                          'images/contacto/iconos/redwhatsapp.svg'),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    html.window.open(
                                        'https://www.facebook.com/UrbanArquitecturaConstruccion/',
                                        'urbanarquitectura');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(22.5),
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SvgPicture.asset(
                                          'images/contacto/iconos/redfacebook.svg'),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    html.window.open(
                                        'https://www.instagram.com/urbanarquitectura.com.mx/?hl=es-la',
                                        'urbanarquitectura');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(22.5),
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SvgPicture.asset(
                                          'images/contacto/iconos/redinstagram.svg'),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    html.window.open(
                                        'https://www.tiktok.com/@urbanarquitectura',
                                        'urbanarquitectura');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(22.5),
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SvgPicture.asset(
                                          'images/contacto/iconos/redtiktok.svg'),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        html.window.open(
                                            'mailto: info@urbanarquitectura.com.mx',
                                            'urbanarquitectura');
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(22.5),
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SvgPicture.asset(
                                              'images/contacto/iconos/redemail.svg'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        html.window.open('tel:4427086211',
                                            'urbanarquitectura');
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(22.5),
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SvgPicture.asset(
                                              'images/contacto/iconos/redtelefono.svg'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        html.window.open(
                                            'https://wa.link/ktvkib',
                                            'urbanarquitectura');
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(22.5),
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SvgPicture.asset(
                                              'images/contacto/iconos/redwhatsapp.svg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        html.window.open(
                                            'https://www.facebook.com/UrbanArquitecturaConstruccion/',
                                            'urbanarquitectura');
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(22.5),
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SvgPicture.asset(
                                              'images/contacto/iconos/redfacebook.svg'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        html.window.open(
                                            'https://www.instagram.com/urbanarquitectura.com.mx/?hl=es-la',
                                            'urbanarquitectura');
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(22.5),
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SvgPicture.asset(
                                              'images/contacto/iconos/redinstagram.svg'),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        html.window.open(
                                            'https://www.tiktok.com/@urbanarquitectura',
                                            'urbanarquitectura');
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(22.5),
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: SvgPicture.asset(
                                              'images/contacto/iconos/redtiktok.svg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                      const SizedBox(
                        height: 22.5,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(45, 0, 45, 25),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 240, 1),
                            labelText: 'Nombre',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(45, 0, 45, 25),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 240, 1),
                            labelText: 'E-mail',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(45, 0, 45, 25),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 240, 1),
                            labelText: 'Teléfono',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(45, 0, 45, 25),
                        child: TextField(
                          controller: text_controller,
                          // enabled: false,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (c) {
                                  return AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: opciones
                                          .map(
                                            (opt) => InkWell(
                                              onTap: () {
                                                opcion_seleccionada = opt;
                                                text_controller.text = opt;
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                              child: ListTile(
                                                title: Text(opt),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  );
                                });
                          },
                          readOnly: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 240, 1),
                            labelText: '¿Cuál es su proyecto?',
                            // label: Text(
                            //   '¿Cuál es su proyecto?',
                            //   style: TextStyle(color: Colors.grey.shade700),
                            // ),
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(45, 0, 45, 25),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          minLines: 5,
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 240, 1),
                            labelText: 'Mensaje',
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                letterSpacing: 1.5),
                            alignLabelWithHint: true,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(45, 0, 45, 25),
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {},
                            child: Container(
                                alignment: Alignment.center,
                                height: 43,
                                color: Color.fromRGBO(128, 128, 128, 1),
                                child: Text(
                                  'Enviar',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200,
                                      letterSpacing: 8),
                                ))),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  letterSpacing: 2.5,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(text: 'URBAN'),
                                  TextSpan(
                                      text: '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Container(
                                color: Colors.black,
                                width: 2,
                                height: 20,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  letterSpacing: 2.5,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: 'By'),
                                  TextSpan(
                                      text: ' Nextiart.',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          html.window.open(
                                              'https://www.facebook.com/Nextiart-316612351829354/',
                                              'NextiArt');
                                        },
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        color: Color.fromRGBO(46, 176, 156, 1),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }
              },
            ),
          ),
          const TopBar(),
        ],
      ),
    );
  }
}
