import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:async';
import 'package:ntucmercatus/dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  Animation<double> animation;

  int _state = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg@3x.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter)),
      ),
      Card(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15)),
          margin: EdgeInsets.fromLTRB(35, 250, 35, 100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                //margin: EdgeInsets.all(8.0),
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 27),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.account_circle, color: Colors.red),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock, color: Colors.red),
                  ),
                ),
              ),
              MaterialButton(
                child: setUpButtonChild(),
                onPressed: () {
                  setState(() {
                    if (_state == 0) {
                      animateButton();
                    }
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15)),
                elevation: 5.0,
                color: Colors.red,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    ]);
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
//      return Icon(Icons.check, color: Colors.white);
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard()),
        );
      });

//      Navigator.of(context).pushReplacementNamed('Dashboard');
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
