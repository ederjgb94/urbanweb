import 'package:flutter/material.dart';

class ButtonNavBar extends StatefulWidget {
  final String titulo;
  final Function accion;

  const ButtonNavBar({Key? key, required this.titulo, required this.accion})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ButtonNavBarState();
  }
}

class ButtonNavBarState extends State<ButtonNavBar> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (v) {
          _isHover = true;
          setState(() {});
        },
        onExit: (v) {
          _isHover = false;
          setState(() {});
        },
        child: InkWell(
            onTap: () {
              widget.accion();
            },
            child: AnimatedContainer(
              padding: EdgeInsets.symmetric(horizontal: 40),
              duration: Duration(milliseconds: 300),
              alignment: Alignment.center,
              height: 80,
              color: _isHover ? Colors.black54 : Colors.transparent,
              child: Text(
                widget.titulo,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  letterSpacing: 4,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )));
  }
}
