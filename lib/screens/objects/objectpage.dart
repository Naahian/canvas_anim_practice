import 'package:flutter/material.dart';
import 'objects.dart';

class ObjectPage extends StatelessWidget {
  ObjectPage({super.key});
  final objects = [
    Clock(),
    SolarSystem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[100],
        child: ListView.separated(
          padding: const EdgeInsets.all(25),
          itemCount: objects.length,
          itemBuilder: (context, index) => objects[index],
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 45);
          },
        ));
  }
}
