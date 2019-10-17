import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_splash/simple/homepage.dart';
class Splash_Page extends StatefulWidget {
  @override
  _Splash_PageState createState() => _Splash_PageState();
}
class _Splash_PageState extends State<Splash_Page> {
  startTime() async{
    var _duration=new Duration(seconds: 15);
    return new Timer(_duration, navigationRoute1);
  }
  void navigationRoute1(){
    Navigator.of(context).pushReplacementNamed('/Homepage');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: new Center(
      child: Padding(
        padding: const EdgeInsets.only(top:100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/babylay.JPG'),
              radius: 50.0,
              child: Text("Mangalar"),
            ),
            Text("Weclome From Myanmar"),
          ],
        ),
      ),
      ),
    );
  }
}
