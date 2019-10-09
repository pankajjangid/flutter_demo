import 'package:flutter/material.dart';

class WidgetsUtils {

  static Widget container(Widget widget) =>
      Container(
        margin: EdgeInsets.all(5),
        child: widget,

      );

  static TextField textinput(TextEditingController userNamecontroller,
      String hintText, TextInputType textInputType, bool isObscureText,) =>
      TextField(
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(Icons.access_alarm),
            border: OutlineInputBorder(
            )),
        keyboardType: textInputType,
        obscureText: isObscureText,
        controller: userNamecontroller,
        autofocus: true,

      );
}