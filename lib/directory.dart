import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Directory extends StatefulWidget {
  @override
  _DirectoryState createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> with TickerProviderStateMixin {
  int _radioValue1 = 0;
  int counter = 0;
  int radioCounter = 0;
  bool _visibility = false;
  bool _visibility1 = false;
  bool _visibility2 = false;
  bool _visibility3 = false;
  bool _visibility4 = false;
  bool _visibility5 = false;
  bool _visibility6 = false;
  bool _visibility7 = false;
  bool _visibility8 = false;
  List name = [
    'Antony James ',
    'Ahsis Singhal       ',
    'Ahsis Singhal      ',
    'Manish Gautam ',
    'Anuiit Sarkar     ',
    'Antony James ',
    'Manish Gautam ',
    'Manish Gautam ',
    'Manish Gautam '
  ];

  Animation<double> animation;
  AnimationController controller;
  Animation<Offset> offset;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  void _handleCounterValueChanged(int value) {
    setState(() {
      counter = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(132),
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
            flexibleSpace: customAppbar(context),
            elevation: 0,
          )),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 4, left: 15),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 0;
                        _visibility = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility = false;
                          radioCounter = 0;
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/aao.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade800,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(0),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('IT Mobility Architect       ',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 101),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility,
                            child: Radio(
                              value: 0,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //  SizedBox(height: 2),
                  //  SizedBox(height: 2),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                  //second row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 1;
                        _visibility1 = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility1 = false;
                          radioCounter = 0;
                        }
                        //    _visibility1 = true;
                      });
                    },
                    child: Row(
                      //    crossAxisAlignment: CrossAxisAlignment.start,
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //                    SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.only(left: 6, top: 5, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/aao.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade800,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(1),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Sr. Consultant Development',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 80),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility1,
                            child: Radio(
                              value: 1,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                  //third row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 2;
                        _visibility2 = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility2 = false;
                          radioCounter = 0;
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6, top: 5, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/aao.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade800,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(2),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Director IT, Shared Services',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 84),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility2,
                            child: Radio(
                              value: 2,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                  //fourth row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 3;
                        _visibility3 = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility3 = false;
                          radioCounter = 0;
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6, top: 5, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/aao.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade800,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(3),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Manager IT                           ',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 88),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility3,
                            child: Radio(
                              value: 3,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                  //fifth row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 4;
                        _visibility4 = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility4 = false;
                          radioCounter = 0;
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6, top: 5, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/coreValueIcon@2x.png'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade800,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(4),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Consultant Development',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 95),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility4,
                            child: Radio(
                              value: 4,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                  //sixth row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 5;
                        _visibility5 = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility5 = false;
                          radioCounter = 0;
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6, top: 5, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/aao.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade800,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(5),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Senior Manager               ',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 100),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility5,
                            child: Radio(
                              value: 5,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                  //seventh row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 6;
                        _visibility6 = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility6 = false;
                          radioCounter = 0;
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6, top: 5, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/aao.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade800,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(6),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Manager IT                           ',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 88),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility6,
                            child: Radio(
                              value: 6,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                  //eight row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 7;
                        _visibility7 = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility7 = false;
                          radioCounter = 0;
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6, top: 5, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/aao.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade900,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(7),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Manager IT                           ',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 88),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility7,
                            child: Radio(
                              value: 7,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                  //nine row
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initiateAnimation();
                        _radioValue1 = 8;
                        _visibility8 = true;
                        radioCounter++;
                        if (radioCounter > 1) {
                          _visibility8 = false;
                          radioCounter = 0;
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 6, top: 5, bottom: 5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/aao.jpg'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.shade900,
                                  spreadRadius: 3.5),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          alignment: Alignment.centerLeft,
                          //   padding: EdgeInsets.only(left: 12, right: 95),
                          child: Column(
                            children: <Widget>[
                              Text(
                                name.elementAt(8),
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('Manager IT                           ',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        SizedBox(width: 88),
                        Transform.scale(
                          scale: 1.6,
                          child: Visibility(
                            visible: _visibility8,
                            child: Radio(
                              value: 8,
                              activeColor: Colors.red.shade900,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      color: Colors.grey.shade400, endIndent: 20, height: 14),
                ],
              ),
            ),
          ),
          createLoginCard(),
        ],
      ),
    );
  }

  Widget customAppbar(BuildContext context) {
    //  Size size = MediaQuery.of(context).size;
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 35, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.arrow_back,
              color: Colors.grey.shade500,
              size: 33,
            ),
            Text('Directory',
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade500,
                )),
            SizedBox(
              height: 5,
            ),
            Text('TOP SUGGESTIONS',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                )),
            Divider(color: Colors.grey[300], thickness: 1, endIndent: 20)
          ],
        ));
  }

  void initiateAnimation() {
    new Future.delayed(const Duration(seconds: 0), () {
      controller.forward();
      counter++;
      if (counter > 1) reverseAnimation();
    });
  }

  void reverseAnimation() {
    counter = 0;
    new Future.delayed(const Duration(seconds: 0), () {
      controller.reverse();
    });
  }

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    offset = Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
        .animate(controller);
    super.initState();
  }

  Widget createLoginCard() {
    return SlideTransition(
      position: offset,
      child: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(5, 280, 5, 0),
          //  color: Colors.white,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Container(
              height: 150,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 6),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/aao.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 7),
                      Text('Manish Gautam', style: TextStyle(fontSize: 15)),
                      SizedBox(width: 120),
                      Text('Clear',
                          style: TextStyle(
                              fontSize: 17, color: Colors.red.shade700)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(
                    height: 5,
                    color: Colors.grey.shade600,
                    thickness: 1,
                  ),
                  //Row for Bottom Card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/dbdate@3x.png',
                            height: 50,
                            width: 50,
                            color: Colors.grey.shade200,
                          ),
                          Text('Email',
                              style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/dbdate@3x.png',
                            height: 50,
                            width: 50,
                            color: Colors.grey.shade200,
                          ),
                          Text('Message',
                              style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/dbdate@3x.png',
                            height: 50,
                            width: 50,
                            color: Colors.grey.shade200,
                          ),
                          Text('Chat',
                              style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/dbdate@3x.png',
                            height: 50,
                            width: 50,
                            color: Colors.grey.shade200,
                          ),
                          Text('Call',
                              style: TextStyle(color: Colors.grey.shade300)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
