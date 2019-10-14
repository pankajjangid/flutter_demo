import 'package:flutter/material.dart';
import 'package:flutter_demo/SplashScreen.dart';
import 'package:flutter_demo/ui/HomeScreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashPage(),
    routes: <String, WidgetBuilder>{
      //'/Login': (BuildContext context) => new LoginPage()
      '/Home': (BuildContext context) => new HomeScreen()
    },
  ));
}
