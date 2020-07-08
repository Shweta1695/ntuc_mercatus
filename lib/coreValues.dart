import 'package:flutter/material.dart';

class CoreValues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: Container(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: Colors.red.shade800,
        title: Text('Core Values',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            )),
      ),
      body: Material(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(height: 100, color: Colors.red.shade800),
                  Center(
                    child: Container(
                      height: 440,
                      margin: EdgeInsets.fromLTRB(15, 40, 15, 80),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: <Widget>[
                            tabController(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabController() {
    return Material(
      color: Colors.red,
      child: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                child: Stack(children: <Widget>[
                  Column(
                    children: <Widget>[
                      circleAndImage(),
                      Container(
                        padding: EdgeInsets.only(),
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text('GROW TOGETHER',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 10),
                              Text(
                                  'Shared commitment to openess,\ncollaboration and empathy provides\n'
                                  'foundation for personal and professional\n'
                                  'growth',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              new Container(
                child: Stack(children: <Widget>[
                  Column(
                    children: <Widget>[
                      circleAndImage(),
                      Container(
                        padding: EdgeInsets.only(),
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text('CREATE CLIENT VALUE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 10),
                              Text(
                                  'Understanding and delivering what drives\nthe value for our client partners and\n'
                                  'enable them to become high\n'
                                  'performance businesses',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              new Container(
                child: Stack(children: <Widget>[
                  Column(
                    children: <Widget>[
                      circleAndImage(),
                      Container(
                        padding: EdgeInsets.only(),
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text('INNOVATION',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 10),
                              Text(
                                  'Challenge conventional wisdom, take\nrisks and speak out for continuous\n'
                                  'innovation',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              new Container(
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        circleAndImage(),
                        Container(
                          padding: EdgeInsets.only(),
                          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text('DELIVER EXCELLENCE',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(height: 10),
                                Text(
                                    'Work as a team to deliver outstanding\nquality work to our clients, stakeholders\n'
                                    'and colleagues',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: new TabBar(
              labelPadding: EdgeInsets.all(0),
              indicatorColor: Colors.green,
              indicatorWeight: 4.0,
              tabs: [
                Tab(
                  icon: (Image.asset(
                    'assets/team@2x.png',
                    height: 35,
                    width: 80,
                  )),
                ),
                Tab(
                  icon: (Image.asset(
                    'assets/rew2@3x.png',
                    height: 35,
                    width: 80,
                  )),
                ),
                Tab(
                  icon: (Image.asset(
                    'assets/rew1@3x.png',
                    height: 35,
                    width: 80,
                  )),
                ),
                Tab(
                  icon: (Image.asset(
                    'assets/rew2@3x.png',
                    height: 35,
                    width: 80,
                  )),
                )
              ],
              //  labelColor: Colors.yellow,
              //unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              //  indicatorPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
      ),
    );
  }

  Widget circleAndImage() {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Image.asset('assets/aao.jpg'),
          ],
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 180),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/coreValueIcon@2x.png'),
                  fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(color: Colors.white, spreadRadius: 4),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
