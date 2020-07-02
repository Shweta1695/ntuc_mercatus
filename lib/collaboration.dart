import 'package:flutter/material.dart';

class Collaboration extends StatelessWidget {
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
        title: Text('Collaborate',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Material(
          child: Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(height: 100, color: Colors.red.shade800),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 16, bottom: 15, top: 20),
                                    child: Text('Employee Community',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17))),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 40, left: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '234',
                                        style: TextStyle(
                                            color: Colors.red.shade800,
                                            fontSize: 20),
                                      ),
                                      Text('Members',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18))
                                    ],
                                  ),
                                  SizedBox(width: 50),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '24',
                                        style: TextStyle(
                                            color: Colors.red.shade800,
                                            fontSize: 20),
                                      ),
                                      Text('Online',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18))
                                    ],
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '45',
                                        style: TextStyle(
                                            color: Colors.red.shade800,
                                            fontSize: 20),
                                      ),
                                      Text('Posts',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                                color: Colors.grey[200],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  width: 140,
                                  height: 30,
                                  child: new Image.asset(
                                    'assets/group.jpeg',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                FlatButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.textsms,
                                    color: Colors.blue,
                                  ),
                                  label: Text(
                                    'Chat',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 240, left: 16.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Forum",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  child: Image.asset(
                                    'assets/coreValueIcon@2x.png',
                                    height: 35,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(right: 120),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Security Team",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)),
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
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Colors.grey[300],
                              endIndent: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 5, left: 10),
                                  child: Image.asset(
                                    'assets/coreValueIcon@2x.png',
                                    height: 35,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(right: 140),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Audit Team",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)),
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
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  child: Image.asset(
                                    'assets/coreValueIcon@2x.png',
                                    height: 35,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(right: 160),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Hr Team",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)),
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
                            SizedBox(height: 5),
                            Divider(
                              color: Colors.grey[300],
                              endIndent: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 5, left: 10),
                                  child: Image.asset(
                                    'assets/coreValueIcon@2x.png',
                                    height: 35,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(right: 160),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Cafeteria",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18)),
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
                            Container(
                              height: 150,
                              child: PageView(
                                controller:
                                    PageController(viewportFraction: 0.5),
                                scrollDirection: Axis.horizontal,
                                pageSnapping: true,
                                children: <Widget>[
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10)),
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Column(children: <Widget>[
                                      SizedBox(height: 10),
                                      Image.asset('assets/coreValueIcon@2x.png',
                                          height: 50),
                                      SizedBox(height: 40),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('Blog  ',
                                              style: TextStyle(fontSize: 20)),
                                          Image.asset(
                                            'assets/arrow@3x.png',
                                            height: 20,
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                    ]),
                                  ),
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10)),
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Column(children: <Widget>[
                                      SizedBox(height: 10),
                                      Image.asset('assets/coreValueIcon@2x.png',
                                          height: 50),
                                      SizedBox(height: 40),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('Posts  ',
                                              style: TextStyle(fontSize: 20)),
                                          Image.asset(
                                            'assets/arrow@3x.png',
                                            height: 20,
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
