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
  late Paint whiteFill;
  late Paint greyFill;
  late Paint glowPaint;
  // stroked paints
  late Paint blueStroke;
  late Paint redStroke;
  late Paint greenStroke;
  late Paint yellowStroke;
  late Paint purpleStroke;
  late Paint orangeStroke;
  late Paint blackStroke;
  late Paint brownStroke;
  late Paint whiteStroke;
  late Paint greyStroke;

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
      ..color = Colors.yellow.shade600
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

    whiteFill = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    greyFill = Paint()
      ..color = Colors.grey.shade600
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
      ..color = Colors.yellow.shade600
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
      ..color = const Color(0xFF722F16)
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    whiteStroke = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    greyStroke = Paint()
      ..color = Colors.grey.shade600
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
  }
}

class GlowPaint {
  final double radius;
  late Paint yellow;
  late Paint blue;
  late Paint grey;
  late Paint orange;
  late Paint red;
  late Paint green;
  late Paint purple;
  late Paint white;

  GlowPaint({this.radius = 2}) {
    yellow = Paint()
      ..color = Colors.yellow.withOpacity(0.8)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius);

    grey = Paint()
      ..color = Colors.grey.withOpacity(0.8)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius);

    orange = Paint()
      ..color = Colors.orange.withOpacity(0.8)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius);

    blue = Paint()
      ..color = Colors.blue.withOpacity(0.8)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius);

    red = Paint()
      ..color = Colors.red.withOpacity(0.8)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius);

    green = Paint()
      ..color = Colors.green.withOpacity(0.8)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius);

    purple = Paint()
      ..color = Colors.purple.withOpacity(0.8)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius);

    white = Paint()
      ..color = Colors.white.withOpacity(0.8)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius);
  }
}
