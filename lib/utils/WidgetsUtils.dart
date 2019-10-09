import 'package:flutter/material.dart';

class WidgetsUtils {

  static Widget getTextFieldContainer(Widget widget) =>
      Container(
        margin: EdgeInsets.all(5),
        child: widget,

      );

  static TextField getTextField(TextEditingController userNamecontroller,
      String hintText, TextInputType textInputType, bool isObscureText,Icon prefixIcon) =>
      TextField(
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
            )),
        keyboardType: textInputType,
        obscureText: isObscureText,
        controller: userNamecontroller,
        autofocus: true,

      );

  static getRaisedButton(Text text,Function onPress)=>RaisedButton(
    color: Colors.blueAccent,
    textColor: Colors.white,
    child: text,
    onPressed: onPress,
  );

  static getTextOfRaisedButton(String text)=>Text(
    text,
    style: TextStyle(),
  );


}