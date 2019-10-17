import 'package:flutter/material.dart';
import 'package:flutter_splash/simple/homepage.dart';
import 'package:flutter_splash/simple/splash_eg.dart';

void main() => runApp(new MaterialApp(
  routes: <String,WidgetBuilder>{
    '/Homepage':(BuildContext context)=> new HomePageSimple()
  },
  home: new Splash_Page(),
));

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Splash Screen",
//      home: new SplashScreenDemo(),
//    );
//  }
//}
// class SplashScreenDemo extends StatefulWidget {
//   @override
//   _SplashScreenDemoState createState() => _SplashScreenDemoState();
// }
//
// class _SplashScreenDemoState extends State<SplashScreenDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return new SplashScreen(
//         seconds: 10,
//       image:Image.asset('assets/babylay.JPG'),
//       title: Text("Hey! How are u?",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),),
//       photoSize: 100,
//       loaderColor: Colors.red,
//       loadingText: Text("Welcome"),
//       navigateAfterSeconds: new HomePage(),
//     );
//   }
// }


