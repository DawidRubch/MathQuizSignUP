import 'package:flutter/material.dart';
import 'package:mathquizsignup/utils/mediaquery.dart';
import 'package:mathquizsignup/widgets/textInputs.dart';

//Home page UI
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//'Welcome to mathquiz' text container

            Container(
                child: Container(
              padding: EdgeInsets.only(
                  left: displayWidth(context) * 0.05,
                  top: displayHeight(context) * 0.1),
              child: Text('Welcome to MathQuiz',
                  style:

//'Welcome to Mathquiz' text decoration

                      TextStyle(
                          fontSize: displayWidth(context) * 0.06,
                          fontWeight: FontWeight.bold)),
            )),
            Container(
              height: displayHeight(context) * 0.004,
              width: displayWidth(context) * 0.6,
              margin: EdgeInsets.only(
                left: displayWidth(context) * 0.05,
                top: displayHeight(context) * 0.012,
              ),
              color: Color(0xff668BEC),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: displayHeight(context) * 0.05,
                    left: displayWidth(context) * 0.05,
                    right: displayWidth(context) * 0.05),
                child: Column(
                  children: <Widget>[
//'Username or email' button

                    TextInputContainer('USERNAME OR EMAIL', [0, 0]),
                    SizedBox(height: displayHeight(context) * 0.035),

//'Password' button

                    TextInputContainer('PASSWORD', [0, 0]),
                    SizedBox(height: displayHeight(context) * 0.005),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(
                          top: displayHeight(context) * 0.008,
                          left: displayWidth(context) * 0.05),
                      child: InkWell(
                        onTap: () {},
                        child:

//'Forgot password' text

                            Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Color(0xff668BEC),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: displayHeight(context) * 0.06),

//'Login' button

                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                displayWidth(context) * 0.06),
                            gradient: LinearGradient(
                              colors: [Color(0xff668BEC), Color(0xff334676)],
                            )),
                        height: displayHeight(context) * 0.07,
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: displayHeight(context) * 0.03),

//Login with Facebook button

                    LoginWithContainers('Log in with Facebook'),
                    SizedBox(height: displayHeight(context) * 0.03),

//Login with Google+ button

                    LoginWithContainers('Log in with Google+')
                  ],
                )),
            SizedBox(height: displayHeight(context) * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//'New' to mathquiz text

                Text(
                  'New to MathQuiz?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: displayWidth(context) * 0.003),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child:

//'Register' text
                      Text(
                    'Register',
                    style: TextStyle(
                        color: Color(0xff668BEC),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

//'Login with Google and Facebook' buttons
class LoginWithContainers extends StatelessWidget {
  final String text;
  LoginWithContainers(this.text);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: displayHeight(context) * 0.07,
          color: Colors.transparent,
          child: Container(
//Decoration

            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 1.0),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(displayWidth(context) * 0.10)),
            child: Center(
              child:

//Text styling
                  Text(text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
            ),
          ),
        ));
  }
}
