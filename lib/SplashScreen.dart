import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(Splash());
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  startTime() async {
    var duration = new Duration(seconds: 2);

    return Timer(duration, navigationPage);
  }

  navigationPage() {
    Navigator.of(context).pushReplacementNamed("/Login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Image.asset('images/flutterwithlogo.png'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
}
