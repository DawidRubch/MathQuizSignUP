import 'package:flutter/material.dart';
import 'screens/signup.dart';
import 'screens/signin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignupPage()
      },
      home: new MyHomePage(),
    );
  }
}


