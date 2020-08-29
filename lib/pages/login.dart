import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,
        duration: Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
   _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    _controller.forward();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            width: width*0.75,
            height: height*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.3),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1888ca),
                  offset: Offset(1, 1),
                  blurRadius: 2.0,
                  spreadRadius: 0.5
                ),
              ]
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: height*0.015),
                  child: Image.asset("assets/google.png"),
                ),
                SizedBox(width: width*0.02,),
                Text("SIGN IN WITH GOOGLE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*0.04),),
              ],
            ),
          ),
        )
      );

  }
}

