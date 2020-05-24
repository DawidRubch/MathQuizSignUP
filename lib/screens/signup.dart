import 'package:flutter/material.dart';

import 'package:mathquizsignup/utils/mediaquery.dart';

import 'package:mathquizsignup/widgets/textInputs.dart';

//Signup page UI
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
//Title of the page

                  Container(
                    padding: EdgeInsets.only(
                        left: displayWidth(context) * 0.05,
                        top: displayHeight(context) * 0.15),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontSize: displayWidth(context) * 0.16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),

//Email text input

            TextInputContainer('EMAIL',
                [displayWidth(context) * 0.05, displayWidth(context) * 0.05]),
            SizedBox(height: displayHeight(context) * 0.01),

//Password text input

            TextInputContainer('PASSWORD',
                [displayWidth(context) * 0.05, displayWidth(context) * 0.05]),
            SizedBox(height: displayHeight(context) * 0.01),

//Username text input

            TextInputContainer('USERNAME',
                [displayWidth(context) * 0.05, displayWidth(context) * 0.05]),
            SizedBox(height: displayHeight(context) * 0.1),

//Login button

            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    right: displayWidth(context) * 0.05),
                decoration:

//Login button decoration

                    BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(displayWidth(context) * 0.07),
                        gradient: LinearGradient(
                          colors: [Color(0xff30788E), Color(0xff42C8F2)],
                        )),
                height: displayHeight(context) * 0.06,
                child: Center(
                  child: Text(
                    'LOGIN',
                    style:

//Login text decoration
                        TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
            SizedBox(height: displayHeight(context) * 0.03),

//Go back button

            Container(
              margin: EdgeInsets.only(
                  left: displayWidth(context) * 0.05,
                  right: displayWidth(context) * 0.05),
              height: displayHeight(context) * 0.06,
              color: Colors.transparent,
              child: Container(
                decoration:

//Go back button decoration

                    BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: displayWidth(context) * 0.003),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(
                            displayWidth(context) * 0.05)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Text('Go Back',
                        style:

//Go back text decoration

                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
