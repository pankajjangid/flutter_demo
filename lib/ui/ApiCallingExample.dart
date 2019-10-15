import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/Strings.dart';
import 'package:flutter_demo/utils/WidgetsUtils.dart';

class ApiExaple extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _ApiExampleState();
      }
    
    }
    
    class _ApiExampleState extends State<ApiExaple> {
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home: Scaffold(
        appBar: WidgetsUtils.getAppbar(Strings.API_CALLING),
        body: Container(),
      ),
    );
  }
}