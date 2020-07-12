import 'package:flutter/material.dart';

//import '../backg.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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