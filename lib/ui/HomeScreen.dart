import 'package:flutter/material.dart';
import 'package:flutter_demo/Login.dart';
import 'package:flutter_demo/pojo/mainpojo.dart';
import 'package:flutter_demo/ui/ApiCallingExample.dart';
import 'package:flutter_demo/utils/Strings.dart';

class HomeScreen extends StatelessWidget {
  final List<MainPojo> listMain = [
    MainPojo(Strings.LOGIN, Icon(Icons.timer_off)),
    MainPojo(Strings.API_CALLING, Icon(Icons.timer_off)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
          appBar: AppBar(
            title: Text(Strings.HOME),
          ),
          body: Container(child:ListView(
            children: listMain
                .map((data) => ListTile(
                      leading:data.icon,
                      title: Text(data.title),
                      onTap: () => onPressSingleView(data.title,context),
                    ))
                .toList(),
          ),)),
    );
  }
}

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
    case Strings.API_CALLING:
      {
        
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ApiExaple()));
      }
      break;
  }
}

final textStyle = TextStyle(
    color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 30);

Widget getSingleContainer(BuildContext context, String text) => Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      height: 30,
      child: Text(
        text,
        style: textStyle,
      ),
    );
