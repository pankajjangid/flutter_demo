import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/TitleText.dart';

import './utils/WidgetsUtils.dart';
import './utils/Validation.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Title",
        theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.blueAccent,
        ),
        home: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TitleText("Login"),
                ],
              ),
              WidgetsUtils.container(WidgetsUtils.textinput(userNamecontroller,
                  "Enter email id.", TextInputType.emailAddress, false)),
              WidgetsUtils.container(WidgetsUtils.textinput(passwordcontroller,
                  "Enter password.", TextInputType.text, true)),
              RaisedButton(
                onPressed: () {
                  debugPrint("Email id : ${userNamecontroller.text}");
                  debugPrint("Pasword : ${passwordcontroller.text}");

                  Validation.isValidEmail(context, userNamecontroller.text, "Please enter email", "Please enter vail email");
                },
                color: Colors.amber,
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

