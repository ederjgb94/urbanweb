import 'dart:math';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LiveGridExample extends StatefulWidget {
  @override
  _LiveGridExampleState createState() => _LiveGridExampleState();
}

class _LiveGridExampleState extends State<LiveGridExample> {
  int itemsCount = 20;
  List<String> s = [
    'images/test/3.jpg',
    'images/test/casa_ene_slide2.jpg',
    'images/test/fe27f2a7ef429f634c204443b251e441.jpg',
    'images/test/Screen-Shot-2020-01-10-at-6.45.39-PM.jpg',
  ];
  @override
  void initState() {
    // Future.delayed(Duration(milliseconds: 500) * 5, () {
    //   if (!mounted) {
    //     return;
    //   }
    //   setState(() {
    //     itemsCount += 10;
    //   });
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                LiveGrid(
                  padding: EdgeInsets.all(16),
                  showItemInterval: Duration(milliseconds: 100),
                  showItemDuration: Duration(milliseconds: 1000),
                  visibleFraction: 0.001,
                  itemCount: itemsCount,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: animationItemBuilder(
                    (index) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              s[index % 4],
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
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
