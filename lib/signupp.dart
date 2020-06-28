/*
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor:
              Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
          appBar: AppBar(
            title: Text('NEW USER'),
            backgroundColor:
                Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0, // <-- ELEVATION ZEROED
          ),
          body: Padding(
            padding: EdgeInsets.all(spaceXS),
            child: Column(
              children: [
                CustomTextFormFieldWidget(
                    labelText: 'Email', hintText: 'Type your Email'),
                UIHelper.verticalSpaceSM,
                SizedBox(
                  width: double.maxFinite,
                  child: RaisedButton(
                    color: Colors.cyan,
                    child: Text('Finish Registration',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
*/
