import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String hintText = "";

  final decoration =
      InputDecoration(border: InputBorder.none, hintText: "hintText");
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(),
      ),
    );
  }
}
