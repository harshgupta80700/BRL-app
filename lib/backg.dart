import 'package:flutter/material.dart';

import 'package:smart_flare/actors/smart_flare_actor.dart';

class BG extends StatefulWidget {
  @override
  _BGState createState() => _BGState();
}

class _BGState extends State<BG> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          Align(
            alignment: Alignment(0, 0),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height, filename: 'assets/App bg.flr',startingAnimation: 'ten',) ,
          ),

         Align(
            alignment: Alignment(0, 0),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height, filename: 'assets/App bg.flr',startingAnimation: 'two',) ,
          ),

          Align(
            alignment: Alignment(-1, -1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.75, height: MediaQuery.of(context).size.height*0.75, filename: 'assets/App bg.flr',startingAnimation: 'five',) ,
          ),

          

          Align(
            alignment: Alignment(1, -1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.5, height: MediaQuery.of(context).size.height*0.5, filename: 'assets/App bg.flr',startingAnimation: 'eight',) ,
          ),

          Align(
            alignment: Alignment(-1, 1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.5, height: MediaQuery.of(context).size.height*0.5, filename: 'assets/App bg.flr',startingAnimation: 'four',) ,
          ),


          Align(
            alignment: Alignment(-1, -1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.5, height: MediaQuery.of(context).size.height*0.5, filename: 'assets/App bg.flr',startingAnimation: 'six',) ,
          ),

          Align(
            alignment: Alignment(1, 0),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.35, height: MediaQuery.of(context).size.height*0.35, filename: 'assets/App bg.flr',startingAnimation: 'ten',) ,
          ),

          Align(
            alignment: Alignment(-1, 0),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.35, height: MediaQuery.of(context).size.height*0.35, filename: 'assets/App bg.flr',startingAnimation: 'three',) ,
          ),

          Align(
            alignment: Alignment(-1,-1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'ten',) ,
          ),

          Align(
            alignment: Alignment(1,-0.5),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'seven',) ,
          ),

          Align(
            alignment: Alignment(1,1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'ten',) ,
          ),

          Align(
            alignment: Alignment(1,-1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'nine',) ,
          ),

          Align(
            alignment: Alignment(-0.5,-1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'four',) ,
          ),

          Align(
            alignment: Alignment(-1,-1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.15, height: MediaQuery.of(context).size.height*0.15, filename: 'assets/App bg.flr',startingAnimation: 'ten',) ,
          ),
         

           Align(
            alignment: Alignment(1,-1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.15, height: MediaQuery.of(context).size.height*0.15, filename: 'assets/App bg.flr',startingAnimation: 'ten',) ,
          ),

           Align(
            alignment: Alignment(0,-1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.35, height: MediaQuery.of(context).size.height*0.35, filename: 'assets/App bg.flr',startingAnimation: 'ten',) ,
          ),

          Align(
            alignment: Alignment(-1,1),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.15, height: MediaQuery.of(context).size.height*0.15, filename: 'assets/App bg.flr',startingAnimation: 'five',) ,
          ),

          Align(
            alignment: Alignment(1,0.5),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'three',) ,
          ),

          Align(
            alignment: Alignment(1,-0.5),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'seven',) ,
          ),

           Align(
            alignment: Alignment(-1,0.5),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'two',) ,
          ),

          Align(
            alignment: Alignment(-1,-0.5),
            child: SmartFlareActor(width: MediaQuery.of(context).size.width*0.25, height: MediaQuery.of(context).size.height*0.25, filename: 'assets/App bg.flr',startingAnimation: 'six',) ,
          ),
        ],
      ),      
    );
  }
}

