import 'package:flutter/material.dart';

class Collab_AppBar extends StatelessWidget {
  final double barHeight = 66.0;

  const Collab_AppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 35, bottom: 10),
      child: Row(children: [
        Image.asset('assets/menuIcon@2x.png', color: Colors.white, height: 20),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 120),
          child: Text('Collaborate',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
      ]),
    );
  }
}
