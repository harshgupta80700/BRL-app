import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_flare/actors/smart_flare_actor.dart';
// import 'package:flare_flutter/flare_actor.dart';
//import 'package:flutter/services.dart';
//import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'navigation.dart';
//import 'coor.dart';

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
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Nav())));
  }

  //Timer _timer;
  //FlutterLogoStyle _logoStyle = FlutterLogoStyle.markOnly;

  // FadeIn() {
  //   _timer = new Timer(const Duration(seconds: 5), () {
  //     setState(() {
  //       _logoStyle = FlutterLogoStyle.horizontal;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    data= MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: SmartFlareActor(width: MediaQuery.of(context).size.width,height: 250.0, filename: "assets/Splash.flr",startingAnimation: "splash",)
      ),
    );
  }

  // void loadUserData() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   if (preferences.getString("username") == null) {
  //     username = null;
  //   } else
  //     username = preferences.getString("username");
  //   if (preferences.getString("email") == null) {
  //     username = null;
  //   } else
  //     emailId = preferences.getString("email");
  // }
}




// class Splash extends StatefulWidget {
//   @override
//   _SplashState createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
   
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(seconds: 5,
//       navigateAfterSeconds: Nav(),
//       image:  Container(
//         width: MediaQuery.of(context).size.width,
//         child: FlareActor("assets/Splash.flr",alignment: Alignment.center,fit: BoxFit.contain,animation: "splash",))
//     );
//   }
// }