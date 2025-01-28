import 'dart:async';
import 'package:canvas_anim_practice/screens/objects/clock_painter.dart';
import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({
    super.key,
  });

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  int hour = DateTime.now().hour;
  int minute = DateTime.now().minute;
  int second = DateTime.now().second;

  void updateTime() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        second = DateTime.now().second;
        minute = DateTime.now().minute;
        hour = DateTime.now().hour;
      });
    });
  }

  @override
  void initState() {
    updateTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ClockPainter(hour: hour, minute: minute, second: second),
      size: const Size(300, 300),
    );
  }
}
