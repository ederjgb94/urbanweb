import 'package:flutter/material.dart';

class RLButton extends StatefulWidget {
  final BoxConstraints constraints;
  final int direction;
  final Function accion;

  const RLButton(
      {Key? key,
      required this.constraints,
      required this.direction,
      required this.accion})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return RLButtonState();
  }
}

class RLButtonState extends State<RLButton> {
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
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.only(
            left: widget.direction == 2 ? 20 : 0,
            right: widget.direction == 0 ? 20 : 0,
          ),
          height: widget.constraints.maxHeight,
          color: _isHover ? Colors.black38 : Colors.transparent,
          child: RotatedBox(
            child: Icon(
              Icons.play_arrow,
              size: 38,
              color: Colors.grey.shade400,
            ),
            quarterTurns: widget.direction,
          ),
        ),
      ),
    );
  }
}
