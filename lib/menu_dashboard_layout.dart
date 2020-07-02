import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ntucmercatus/collaboration.dart';

class MenuDashboardPage extends StatelessWidget {
  final Duration duration = const Duration(milliseconds: 3000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 18,
          ),
          child: Image.asset('assets/menuIcon@2x.png',
              color: Colors.white, height: 20),
        ),
        backgroundColor: Colors.red.shade800,
        title: Image.asset(
          'assets/app_header.png',
          color: Colors.white,
          width: 130,
          height: 30,
        ),
      ),
      body: Stack(
        children: <Widget>[
          dashboard(context),
        ],
      ),
    );
  }

  Widget dashboard(context) {
    return SingleChildScrollView(
      child: Material(
        animationDuration: const Duration(milliseconds: 3000),
//        borderRadius: BorderRadius.all(Radius.circular(40)),
        elevation: 8,
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(height: 100, color: Colors.red.shade800),
                  Container(
                    height: 200,
                    child: PageView(
                      controller: PageController(viewportFraction: 0.95),
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/img1-1.jpg',
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 5,
                                    margin: EdgeInsets.only(top: 5, left: 10),
                                    height: 23,
                                    color: Colors.red.shade800,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                      'Create business value by collaborating'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/img1-1.jpg',
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 5,
                                    margin: EdgeInsets.only(top: 5, left: 10),
                                    height: 23,
                                    color: Colors.red.shade800,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                      'Create business value by collaborating'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/img1-1.jpg',
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 5,
                                    margin: EdgeInsets.only(top: 5, left: 10),
                                    height: 23,
                                    color: Colors.red.shade800,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                      'Create business value by collaborating'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Container for top card

              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5)),
                margin:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            'Upcoming Events',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5, right: 5),
                            child: Text('See All',
                                style: TextStyle(
                                    color: Colors.red.shade800, fontSize: 13))),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Image.asset(
                            'assets/rew1@3x.png',
                            height: 40,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(right: 130),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '2018 ISM Event',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(height: 3),
                              Text('27 Sept - 01 Oct      ',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Image.asset(
                            'assets/arrow@3x.png',
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Image.asset(
                            'assets/rew1@3x.png',
                            height: 40,
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(right: 130),
                            child: Column(
                              children: <Widget>[
                                Text('2018 ISM Event',
                                    style: TextStyle(fontSize: 15)),
                                SizedBox(height: 3),
                                Text('27 Sept - 01 Oct      ',
                                    style: TextStyle(fontSize: 12)),
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Image.asset('assets/arrow@3x.png'),
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ), //Card for Upcoming Events
              Container(
                height: 150,
                child: PageView(
                    controller: PageController(viewportFraction: 0.5),
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5)),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            Image.asset(
                              'assets/salesIcon@2x.png',
                              height: 45,
                            ),
                            SizedBox(height: 10),
                            Text(
                              '  Directory  ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5)),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            Image.asset('assets/coreValueIcon@2x.png',
                                height: 45),
                            SizedBox(height: 10),
                            Text('  Core Values  ',
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5)),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Collaboration()),
                                );
                              },
                              child: Image.asset(
                                  'assets/collaborationIcon@2x.png',
                                  height: 45),
                            ),
                            SizedBox(height: 10),
                            Text('  Collaboration  ',
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5)),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            Image.asset('assets/salesIcon@2x.png', height: 45),
                            SizedBox(height: 10),
                            Text('  Sales\n Enablement',
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5)),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            Image.asset('assets/salesIcon@2x.png', height: 45),
                            SizedBox(height: 10),
                            Text('  Training \n Calendar',
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ]),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5)),
                margin:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            'News',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10, right: 10),
                            child: Text('See All',
                                style: TextStyle(
                                  color: Colors.red.shade800,
                                  fontSize: 13,
                                ))),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 85),
                          child: Image.asset(
                            'assets/twitterIcon@2x.png',
                            height: 40,
                          ),
                        ),
                        Container(
                          width: 260,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                ' Congratulations to @Sovereignnz\n for taking home two honors at the\n White Camelia Awards! The team\n was recognised for thier ongoing\n commitement towards gender\n equality in the workplace! Congrats\n team Soveregn!  ',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '11 Oct 2018                                 '
                                '                              ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 11),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
