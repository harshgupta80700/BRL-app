import 'package:flutter/material.dart';

//import '../backg.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,
        children: <Widget>[
        //   Container(
        //     height: MediaQuery.of(context).size.height,
        //     width: MediaQuery.of(context).size.width,
        //     child: BG()
        //   ),

        //   Container(
        //     height: MediaQuery.of(context).size.height,
        //     width: MediaQuery.of(context).size.width,
        //     color: Colors.white30,
        //   ),
        ],
      );
  }
}