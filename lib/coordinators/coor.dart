import 'package:brl_app/coordinators/coor2.dart';
import 'package:brl_app/coordinators/coor3.dart';
import 'package:flutter/material.dart';


class Coor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Coordinators2(),
        Coordinators3()
      ],
    );

  }
}