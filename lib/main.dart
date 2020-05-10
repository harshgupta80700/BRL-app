import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
//import 'package:flutter/services.dart';
import 'navigation.dart';
//import 'coor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Nav(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: FlareActor("assets/Splash.flr",alignment: Alignment.center,fit: BoxFit.contain,animation: "splash",)),
    );
  }
}