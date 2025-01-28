import 'dart:math';
import 'package:canvas_anim_practice/config/pallete.dart';
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final double pi = 3.14;
  final double r = 120.0;
  final int hour;
  final int minute;
  final int second;

  ClockPainter({
    required this.hour,
    required this.minute,
    required this.second,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width * .5, size.height * .5);
    clockBody(canvas, center);
    handles(canvas, center);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    final ClockPainter oldPainter = oldDelegate as ClockPainter;
    return oldPainter.hour != hour ||
        oldPainter.minute != minute ||
        oldPainter.second != second;
  }

  void clockBody(Canvas canvas, Offset center) {
    //background
    canvas.drawCircle(center, 120, Paints(width: 10).whiteFill);
    // border
    canvas.drawCircle(center, 120, Paints(width: 10).brownStroke);
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

  void handles(canvas, center) {
    // second hand
    final double secondAngle = 2 * pi * (second / 60);
    final double secondX = r * 0.8 * cos(secondAngle - pi / 2);
    final double secondY = r * 0.8 * sin(secondAngle - pi / 2);
    canvas.drawLine(center, center + Offset(secondX, secondY),
        Paints(width: 1).blackStroke);
    // minute hand
    final double minuteAngle = 2 * pi * (minute / 60);
    final double minuteX = r * 0.6 * cos(minuteAngle - pi / 2);
    final double minuteY = r * 0.6 * sin(minuteAngle - pi / 2);
    canvas.drawLine(center, center + Offset(minuteX, minuteY),
        Paints(width: 3).blackStroke);
    // hour hand
    final double hourAngle = 2 * pi * ((hour / 12) + (minute / 60) / 12);
    final double hourX = r * 0.4 * cos(hourAngle - pi / 2);
    final double hourY = r * 0.4 * sin(hourAngle - pi / 2);
    canvas.drawLine(
        center, center + Offset(hourX, hourY), Paints(width: 5).blackStroke);
  }
}
