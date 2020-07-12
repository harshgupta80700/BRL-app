import 'package:flutter/material.dart';

//import '../backg.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   child: BG()
          // ),

          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   color: Colors.white30,
          // ),
        ],
      );
  }
}