import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Center(
        child: Text(
          "Charts PAGE",
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
