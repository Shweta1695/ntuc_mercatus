import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:ntucmercatus/dashboard.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  Animation<double> animation;
  TextEditingController userEmailController;
  TextEditingController userPasswordController;
  AnimationController controller;
  Animation<Offset> offset;
  GlobalKey<_LoginScreenState> _counterState = new GlobalKey();
  AnimationController animationController;
  bool isLoginClicked = false;

  int _state = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/bg@3x.png',
              fit: BoxFit.fill,
            ),
          ),
          createLoginCard(),
        ],
      ),
    );
  }

  void initiateAnimation() {
    new Future.delayed(const Duration(seconds: 4), () {
      controller.forward();
    });
  }

  @override
  void initState() {
    userEmailController = new TextEditingController();
    userPasswordController = new TextEditingController();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    offset = Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
        .animate(controller);
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Route route = MaterialPageRoute(builder: (context) => Dashboard());
        Navigator.pushReplacement(context, route);
      }
    });
    initiateAnimation();
    super.initState();
  }

  Widget createLoginCard() {
    return SlideTransition(
      position: offset,
      child: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(35, 120, 35, 80),
          //  padding: EdgeInsets.all(15),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: 270,
              child: Stack(
                children: <Widget>[
                  createAddProductForm(),
                  LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return CircularRevealAnimation(
                      minRadius: 100,
                      maxRadius: 500,
                      centerOffset: Offset(140.0, 340.0),
                      child: isLoginClicked
                          ? Container(color: Colors.red.shade800)
                          : Container(),
                      animation: animation,
                    );
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createAddProductForm() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 35, 20, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 27),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5.0, right: 5, top: 10, bottom: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon:
                    Icon(Icons.account_circle, color: Colors.red.shade800),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5.0, right: 5, top: 10, bottom: 5),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock, color: Colors.red.shade800),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 5),
              child: ProgressButton(
                borderRadius: 50.0,
                defaultWidget: const Text('SIGN IN',
                    style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.red.shade800,
                width: 150,
                onPressed: () async {
                  await Future.delayed(const Duration(milliseconds: 2000), () {
                    setState(() {
                      isLoginClicked = true;
                    });
                    animationController.forward();
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget setUpButtonChild() {
    if (_state == 0) {
      return new Text(
        "    SIGN IN    ",
        style: const TextStyle(
          color: Colors.white,

//          fontSize: 16.0,
        ),
      );
    } else if (_state == 1) {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    } else {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard()),
        );
      });
    }
  }

  void animateButton() {
    setState(() {
      _state = 1;
    });

    Timer(Duration(milliseconds: 3300), () {
      setState(() {
        _state = 2;
      });
    });
  }
}
