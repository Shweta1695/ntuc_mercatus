import 'package:flutter/material.dart';
import 'package:ntucmercatus/dashboard.dart';
import 'package:ntucmercatus/myflexiappbar.dart';

import 'myappbar.dart';

class MenuDashboardPage extends StatelessWidget {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 3000);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          //   menu(context), Code for side drawer
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Home", style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("About Us",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("CEO Speaks",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("Core Values",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("Sales Enablement",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("Collaboration",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("Training Calendar",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("Claim FAQ's",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("Terms and Conditions",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("Contact Us",
                style: TextStyle(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10),
            Text("Logout", style: TextStyle(color: Colors.black, fontSize: 22)),
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      top: isCollapsed ? 0 : 0.2 * screenHeight,
      bottom: isCollapsed ? 0 : 0.2 * screenWidth,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      duration: duration,
      child: Material(
        animationDuration: const Duration(milliseconds: 3000),
        borderRadius: BorderRadius.all(Radius.circular(40)),
        elevation: 8,
        child: Container(
//            padding: const EdgeInsets.only(top: 48),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // put menu icon here if needed.
                    Expanded(child: MyAppBar()), // normal app bar
                  ],
                ),
              ),
              Container(
                  height: 200,
                  child: PageView(
                    controller: PageController(viewportFraction: 0.8),
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                    children: <Widget>[
                      //     SizedBox(height: 10),
                      Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(),
                              Container(),
                              Container(),
                            ],
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        color: Colors.redAccent,
                        width: 100,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        color: Colors.blue,
                        width: 100,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        color: Colors.greenAccent,
                        width: 100,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
