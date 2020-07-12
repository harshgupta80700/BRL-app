import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smart_flare/actors/smart_flare_actor.dart';
import 'navigation.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //   [DeviceOrientation.portraitUp]
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FadeIn();
}

class FadeIn extends State<SplashScreen> {
  MediaQueryData data;
  @override
  void initState() {
    //loadUserData();
    super.initState();

    Timer(
        Duration(seconds: 11),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Nav())));
  }


  @override
  Widget build(BuildContext context) {
    data= MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.85,height:MediaQuery.of(context).size.height , filename: "assets/BRLappsplash.flr",startingAnimation: "splash",)
      ),
    );
  }
}



