import 'package:flutter/material.dart';
import 'package:flutter_demo/Login.dart';
import 'package:flutter_demo/SplashScreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashPage(),
    routes: <String, WidgetBuilder>{
      '/Login': (BuildContext context) => new LoginPage()
    },
  ));
}
