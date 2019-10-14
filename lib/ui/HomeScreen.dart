import 'package:flutter/material.dart';
import 'package:flutter_demo/Login.dart';
import 'package:flutter_demo/utils/Strings.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.HOME),
        ),
        body: ListView(
          children: <Widget>[
            getSingleView(context, Strings.LOGIN,
                onPressSingleView(Strings.LOGIN, context)),
            getSingleView(context, Strings.CUSTOM_DIALOG,
                onPressSingleView(Strings.CUSTOM_DIALOG, context)),
            getSingleView(context, Strings.API_CALLING,
                onPressSingleView(Strings.API_CALLING, context))
          ],
        ),
      ),
    );
  }
}

Widget getSingleView(BuildContext context, String text, onPressed) => Container(
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.redAccent,
        textColor: Colors.white,
        child: Text(text),
        onPressed: onPressed,
      ),
    );

onPressSingleView(String string, BuildContext context) {
  switch (string) {
    case Strings.LOGIN:
      {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
      break;
    case Strings.CUSTOM_DIALOG:
      {}
      break;
    case Strings.HOME:
      {}
      break;
  }
}
