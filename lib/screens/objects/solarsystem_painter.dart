import 'dart:math';

import 'package:canvas_anim_practice/config/pallete.dart';
import 'package:flutter/material.dart';

class SolarSystemPainter extends CustomPainter {
  final Animation<double> sunAnimation;
  final Animation<double> planetAnimation;
  final List<Offset> starPoints;

  SolarSystemPainter({
    required this.sunAnimation,
    required this.planetAnimation,
    required this.starPoints,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width / 2) * 0.9;

    drawStars(canvas, size);
    drawOrbit(canvas, center, radius);
    drawSun(center, radius, canvas);
    drawPlanets(canvas, center, radius);
  }

  void drawSun(Offset center, double radius, Canvas canvas) {
    canvas.drawCircle(center, radius / 4.4,
        GlowPaint(radius: 10 * sunAnimation.value).yellow);
    canvas.drawCircle(center, radius / 4.4, Paints().orangeFill);
    canvas.drawCircle(
        center, radius / 10, GlowPaint(radius: 10 * sunAnimation.value).white);
  }

  void drawOrbit(Canvas canvas, Offset center, double radius) {
    canvas.drawCircle(center, radius / 1.1, Paints(width: .5).greyStroke);
    canvas.drawCircle(center, radius / 1.5, Paints(width: .5).greyStroke);
    canvas.drawCircle(center, radius / 2.2, Paints(width: .5).greyStroke);
  }

  void drawPlanets(Canvas canvas, Offset center, double radius) {
    // (..value * 2) to increase speed
    double marsVelocity = planetAnimation.value * 1;
    double earthVelocity = planetAnimation.value * 2;
    double mercuryVelocity = planetAnimation.value * 3;

    Offset marsPath = center +
        Offset((radius / 1.1) * cos(2 * pi * marsVelocity),
            (radius / 1.1) * sin(2 * pi * marsVelocity));

    Offset earthPath = center +
        Offset((radius / 1.5) * cos(2 * pi * earthVelocity),
            (radius / 1.5) * sin(2 * pi * earthVelocity));
    Offset mercuryPath = center +
        Offset((radius / 2.2) * cos(2 * pi * mercuryVelocity),
            (radius / 2.2) * sin(2 * pi * mercuryVelocity));

    drawPlanet(marsPath, radius / 1.1, canvas, "mars");
    drawPlanet(earthPath, radius / 1.5, canvas, "earth");
    drawPlanet(mercuryPath, radius / 2.2, canvas, "mercury");
  }

  void drawStars(Canvas canvas, Size size) {
    for (var point in starPoints) {
      double twinkle = ((Random().nextDouble() * 1.0) > 0.98)
          ? sunAnimation.value * 1.5
          : 0.6;
      canvas.drawCircle(point, twinkle, Paints().whiteFill);
    }
  }

  void drawPlanet(Offset center, double radius, Canvas canvas, String name) {
    late Paint glow = GlowPaint().purple;
    late Paint paint;
    name = name.toLowerCase();

    switch (name) {
      case "mercury":
        paint = Paints().greyFill;
        break;
      case "earth":
        paint = Paints().blueFill;
        break;
      case "mars":
        paint = Paints().redFill;
        break;
    }
    canvas.drawCircle(center, radius / 10, glow);
    canvas.drawCircle(center, radius / 10, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
