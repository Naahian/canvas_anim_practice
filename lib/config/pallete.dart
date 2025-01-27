import 'package:flutter/material.dart';

class Paints {
  final double width;
  // filled paints
  late Paint blueFill;
  late Paint redFill;
  late Paint greenFill;
  late Paint yellowFill;
  late Paint purpleFill;
  late Paint orangeFill;
  late Paint blackFill;
  late Paint brownFill;
  // stroked paints
  late Paint blueStroke;
  late Paint redStroke;
  late Paint greenStroke;
  late Paint yellowStroke;
  late Paint purpleStroke;
  late Paint orangeStroke;
  late Paint blackStroke;
  late Paint brownStroke;

  Paints({this.width = 1.0}) {
    blueStroke = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    blueFill = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    redFill = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    greenFill = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    yellowFill = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    purpleFill = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    orangeFill = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    blackFill = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    brownFill = Paint()
      ..color = Colors.brown
      ..style = PaintingStyle.fill;

    redStroke = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    greenStroke = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    yellowStroke = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    purpleStroke = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    orangeStroke = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    blackStroke = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    brownStroke = Paint()
      ..color = Colors.brown
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
  }
}
