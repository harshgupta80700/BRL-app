import 'dart:async';
import 'package:brl_app/GlobalVariables.dart';
import 'package:brl_app/pages/Navigation.dart';
import 'package:brl_app/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smart_flare/smart_flare.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;
  bool isSignedIn= false;
  bool isShowLoginButton = false;

  Widget changevariable(){
    setState(() {
      isShowLoginButton = true;
    });
    return Container();
  }

  Future<FirebaseUser> _handleSignIn() async{
    FirebaseUser user;
      final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      user = (await _auth.signInWithCredential(credential)).user;

    return user;
  }

  void onGoogleSignIn(BuildContext context) async{
    user = await _handleSignIn();
    await setSharedPreferences(user.displayName, user.photoUrl);
    name = await getUserName();
    photoUrl = await getPhotoUrl();
    print(name);
    print(photoUrl);
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=>Navigation()));
  }


  Future<bool> _isSignInCheck() async{
    bool isSignedInFunction = await googleSignIn.isSignedIn();
    print("hello there");
    if(isSignedInFunction){
      name = await getUserName();
      photoUrl = await getPhotoUrl();
    }
    return isSignedInFunction;
  }


  @override
  void initState(){
    _isSignInCheck().then((value){
      setState(() {
        isSignedIn = value;
        print(isSignedIn);
        print("1");
        print(isSignedIn);
        print("2");
        isSignedIn?
        Timer(Duration(seconds: 11),
                ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Navigation()))) : Timer(Duration(seconds: 10),(){
          print(isSignedIn);
          print("3");
          changevariable();
        });

      });
    });
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    deviceNavBarColor();
    potraitModeOnly();
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Align(
            alignment: Alignment(0, 0),
              child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.85,playStartingAnimationWhenRebuilt: false,height: screenwidth, filename: "assets/BRLappsplash.flr",startingAnimation: "splash",)
          ),
          isShowLoginButton?
           Positioned(
              bottom: screenheight*0.1,
              left: screenwidth/2 - screenwidth*0.375,
              child: InkWell(
                child: LoginButton(),
                onTap: (){
                  onGoogleSignIn(context);
                },

              ),
            )
          :
          Container()

        ],
      )
    );
  }
}