import 'package:flutter/material.dart';

import 'Consts.dart';
import 'MyCallback.dart';

class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  final MyCallback callback;

  CustomDialog(
      {@required this.title,
      @required this.description,
      @required this.buttonText,
      this.image,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        //...bottom card part,
        Container(
          padding: EdgeInsets.only(
            top: Const.avatarRadius + Const.padding,
            bottom: Const.padding,
            left: Const.padding,
            right: Const.padding,
          ),
          margin: EdgeInsets.only(top: Const.avatarRadius),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Const.padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: const Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: callback,
                  child: Text(buttonText),
                ),
              ),
            ],
          ),
        ),

        //...top circlular image part,
        Positioned(
          left: Const.padding,
          right: Const.padding,
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: Const.avatarRadius,
          ),
        ),
      ],
    );
  }
}
