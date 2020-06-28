import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(
          'assets/app_header.png',
          color: Colors.blue,
          width: 130,
          height: 40,
        ),
      ),
    );
  }
}
