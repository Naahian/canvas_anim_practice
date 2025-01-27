import 'dart:math';
import 'package:canvas_anim_practice/config/pallete.dart';
import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  const Clock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ObjectPainter(),
      size: const Size(300, 300),
    );
  }
}

class ObjectPainter extends CustomPainter {
  final double pi = 3.14;
  final double r = 120.0;

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width * .5, size.height * .5);
    clockBody(canvas, center);
    secondDial(canvas, center);
  }

  // ********************************

  void clockBody(Canvas canvas, Offset center) {
    // border
    canvas.drawCircle(center, 120, Paints(width: 10).blackStroke);
    // minute markers
    for (double i = 0; i < 2 * pi; i += (2 * pi / 60)) {
      double startX = r * 0.90 * cos(i);
      double startY = r * 0.90 * sin(i);
      double endX = r * 0.95 * cos(i);
      double endY = r * 0.95 * sin(i);
      canvas.drawLine(center + Offset(startX, startY),
          center + Offset(endX, endY), Paints(width: 2).blackStroke);
    }
    // hour markers
    for (double i = 0; i < 2 * pi; i += (2 * pi / 12)) {
      double startX = r * 0.85 * cos(i);
      double startY = r * 0.85 * sin(i);
      double endX = r * 0.95 * cos(i);
      double endY = r * 0.95 * sin(i);
      canvas.drawLine(center + Offset(startX, startY),
          center + Offset(endX, endY), Paints(width: 3).blackStroke);
    }
    //numbers
    for (int i = 1; i < 13; i++) {
      final double step = 2 * pi / 12;
      double x = r * 0.75 * cos(i * step - pi / 2);
      double y = r * 0.75 * sin(i * step - pi / 2);
      final tp = TextPainter(
          text: TextSpan(
              text: i.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center);
      tp.layout();
      tp.paint(canvas, Offset(center.dx + x - 6, center.dy + y - 11));
    }
    // cnetre dot
    canvas.drawCircle(center, 6, Paints().blackFill);
  }

  void secondDial(canvas, center) {
    // second hand
    final int second = 32;
    final double secondAngle = 2 * pi * (second / 60);
    final double secondX = r * 0.8 * cos(secondAngle - pi / 2);
    final double secondY = r * 0.8 * sin(secondAngle - pi / 2);
    canvas.drawLine(center, center + Offset(secondX, secondY),
        Paints(width: 1).blackStroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
