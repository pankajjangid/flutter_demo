import 'package:flutter/material.dart';

class Validation {
  static bool isValidEmail(
      BuildContext context, String value, String emptyError, String error) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';


    if (value.isEmpty) {
      showSnackBar(context, emptyError);
      return false;
    }
    RegExp regex = new RegExp(pattern);
    if(!regex.hasMatch(value)){
      showSnackBar(context, error);
      return false;
    }else{
      return false;
    }

  }

  static showSnackBar(BuildContext context, String msg) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      duration: Duration(seconds: 3),
    ));
  }
}
