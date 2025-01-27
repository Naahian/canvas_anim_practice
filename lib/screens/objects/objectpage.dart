import 'package:flutter/material.dart';
import 'objects.dart';

class ObjectPage extends StatelessWidget {
  ObjectPage({super.key});
  final objects = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[100],
        child: ListView(
          padding: const EdgeInsets.all(25),
          children: [
            Clock(),
          ],
        ));
  }
}
