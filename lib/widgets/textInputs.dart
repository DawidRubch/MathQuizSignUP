import 'package:flutter/material.dart';
import 'package:mathquizsignup/utils/mediaquery.dart';

//Text inputs containers
class TextInputContainer extends StatelessWidget {
  //Input text

  final String text;

  //An array which first variable is a left padding and the second is a right padding

  final List<double> leftRightPadding;

  TextInputContainer(this.text, this.leftRightPadding);

  @override
  Widget build(BuildContext context) {
    return Container(

//Input padding

        padding: EdgeInsets.only(
            top: displayHeight(context) * 0.03,
            left: leftRightPadding[0],
            right: leftRightPadding[1]),
        child: Column(children: <Widget>[
          TextField(
            decoration:

//InputDecoration

                InputDecoration(
                    labelText: text,
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue))),
          ),
        ]));
  }
}
