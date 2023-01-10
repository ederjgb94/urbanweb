import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:html' as html;

class HomeFooter extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'URBAN | By ',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400,
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
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff2E8D80),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              html.window.open(
                  'mailto: info@urbanarquitectura.com.mx', 'urbanarquitectura');
            },
            child: Container(
              width: 32,
              height: 32,
              child: SvgPicture.asset(
                'images/pie-pagina/email.svg',
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              html.window.open('tel:4427086211', 'urbanarquitectura');
            },
            child: Container(
              width: 32,
              height: 32,
              child: SvgPicture.asset(
                'images/pie-pagina/telefono.svg',
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              html.window.open('https://wa.link/ktvkib', 'urbanarquitectura');
            },
            child: Container(
              width: 32,
              height: 32,
              child: SvgPicture.asset(
                'images/pie-pagina/whatsapp.svg',
                color: Colors.black,
              ),
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
                'images/pie-pagina/facebook.svg',
                color: Colors.black,
              ),
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
                'images/pie-pagina/instagram.svg',
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              html.window.open('https://www.tiktok.com/@urbanarquitectura',
                  'urbanarquitectura');
            },
            child: Container(
              width: 32,
              height: 32,
              child: SvgPicture.asset(
                'images/pie-pagina/tiktok.svg',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
