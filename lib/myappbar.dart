import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 35, bottom: 10),
      child: Row(children: [
        InkWell(
          child: Image.asset('assets/menuIcon@2x.png',
              color: Colors.white, height: 20),
          /*      Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
      */ /*    onTap: () {
              setState() {
                // isCollapsed = !isCollapsed;
              }
          */
          //}
        ),
        Expanded(
          child: Image.asset(
            'assets/app_header.png',
            color: Colors.white,
            width: 130,
            height: 30,
          ),
        ),
      ]),
    );
  }
}
