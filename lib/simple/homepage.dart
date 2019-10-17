import 'package:flutter/material.dart';
import 'package:flutter_splash/simple_ptf/p_t_r.dart';
class HomePageSimple extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageSimple> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.cyan,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: new Center(
          child: GestureDetector(
              child: Text("click Me to ge pull to refresh"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PullToRefresh1()),
              );
            },
          ),
        ),
      ),
    );
  }
}
