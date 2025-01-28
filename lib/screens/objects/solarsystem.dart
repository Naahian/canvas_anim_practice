import 'dart:math';
import 'package:canvas_anim_practice/screens/objects/solarsystem_painter.dart';
import 'package:flutter/material.dart';

class SolarSystem extends StatefulWidget {
  const SolarSystem({super.key});

  @override
  State<SolarSystem> createState() => _SolarSystemState();
}

class _SolarSystemState extends State<SolarSystem>
    with TickerProviderStateMixin {
  final double width = 350;
  final double height = 350;
  List<Offset> starPoints = [];

  late AnimationController _sunAnimation;
  late AnimationController _planetAnimation;

  void defineAnimations() {
    _sunAnimation = AnimationController(
      lowerBound: 0.5,
      upperBound: 1.0,
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..addListener(() {
        setState(() {});
      })
      ..animateTo(1.0, curve: Curves.easeIn);

    _planetAnimation = AnimationController(
      lowerBound: 0,
      upperBound: 1,
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void initState() {
    defineAnimations();
    getStarPoints();

    _sunAnimation.repeat(reverse: true);
    _planetAnimation.repeat();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _sunAnimation.dispose();
    _planetAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFF0E0C17),
          // color: Colors.amberAccent,
        ),
        child: main());
  }

  CustomPaint main() {
    return CustomPaint(
      painter: SolarSystemPainter(
        sunAnimation: _sunAnimation,
        planetAnimation: _planetAnimation,
        starPoints: starPoints,
      ),
    );
  }

  void getStarPoints() {
    for (var i = 0; i < 100; i++) {
      starPoints.add(Offset(
          Random().nextDouble() * width, Random().nextDouble() * height));
    }
  }
}
