import 'package:brl_app/coor.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
//import 'package:brl_app/backg.dart';





void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Coordinators2(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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