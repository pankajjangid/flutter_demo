import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/Palette.dart';

class TitleText extends StatelessWidget {
  final String title;
  final textStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Palette.blueSky,
      letterSpacing: 0.5);

  TitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
