import 'package:flutter/material.dart';

class InteractivePage extends StatelessWidget {
  const InteractivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Center(
        child: Text(
          "Interactive PAGE",
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
