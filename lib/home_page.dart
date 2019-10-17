import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mangalar Myanmar"),
         //automaticallyImplyLeading: false,
        ),
        body: Container(
          child: new ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage:AssetImage('assets/babylay.JPG'),
                    backgroundColor: Colors.cyan,
                    radius: 50.0,
                  ),
                  Text("This is Baby Lay"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
