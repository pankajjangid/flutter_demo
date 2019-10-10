import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/CustomDialog.dart';
import 'package:flutter_demo/widgets/TitleText.dart';

import './utils/WidgetsUtils.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  VoidCallback doSomething() {
    debugPrint("doSomething");
  }

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
              WidgetsUtils.getTextFieldContainer(WidgetsUtils.getTextField(
                  userNamecontroller,
                  "Enter email id.",
                  TextInputType.emailAddress,
                  false,
                  Icon(Icons.email))),
              WidgetsUtils.getTextFieldContainer(WidgetsUtils.getTextField(
                  passwordcontroller,
                  "Enter password.",
                  TextInputType.text,
                  true,
                  Icon(Icons.lock))),
              WidgetsUtils.getRaisedButton(
                  WidgetsUtils.getTextOfRaisedButton("Submit"), onButtonPress)
            ],
          ),
        ),
      ),
    );
  }

  onButtonPress() {
    debugPrint("Email id : ${userNamecontroller.text}");
    debugPrint("Pasword : ${passwordcontroller.text}");

    showDialog(
      context: context,
      builder: (BuildContext context) =>
          CustomDialog(
            title: "Success",
            description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            buttonText: "Okay",
            image: Image.asset('images/flutterwithlogo.png'),
            callback: doSomething,
          ),
    );

    /* void doSomething(int i){

    }*/

/*
    Validation.isValidEmail(context, userNamecontroller.text,
        "Please enter email", "Please enter vail email");*/
  }
}
