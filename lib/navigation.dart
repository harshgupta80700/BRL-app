import 'package:brl_app/backg.dart';
import 'home/home.dart';
import 'news/news.dart';
import 'contact/contact.dart';
import 'events/events.dart';
import  'coordinators/coor.dart';
import 'package:flutter/material.dart';
import 'package:smart_flare/actors/smart_flare_actor.dart';


const colorblue = Color(0xff1888ca);
class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  String homeani = "home";
  String newsani = "news";
  String coorani = "coor";
  String contactani = "contact";
  String eventani = "event";
  int index;
  bool home = true,news=false,coor=false,contact=false,event=false;

  Widget showpage(int indexvalue){
    switch(indexvalue){
      
      case 1: return Home();
      case 2: return News();
      case 3: return Coor();
      case 4: return Contact();
      case 5: return Events();
    }
    return Home();
  }

  @override
  void initState() {
    super.initState();
    // home?homeani="splash":homeani="home";
    // news?newsani="splash":newsani="news";
    // coor?coorani="splash":coorani="coor";
    // contact?contactani="splash":contactani="contact";
    // event?eventani="splash":eventani="event";
    homeani="splash";
    index =3;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(child: Container(child:Stack(
            fit: StackFit.expand,
            children: [
              BG(),
              Container(
                color: Colors.white24,
              ),
              showpage(index)
            ],
          ))),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.07,
            color: colorblue.withOpacity(0.5),
            //color: colorblue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap:()=> setState(() {

                    homeani = coorani = contactani= newsani = "none";
                    eventani = "splash";
                    index =5;
                    
                  }),
                  child: Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width/5,
                  child: SmartFlareActor(width: double.infinity, height: double.infinity,filename: 'assets/Splash.flr',startingAnimation: eventani),
                  
                ),),

                GestureDetector(
                  onTap:()=> setState(() {
                    newsani ="splash";
                    homeani = coorani = contactani= eventani = "none";
                    index = 2;
                  }),
                  child: Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width/5,
                  child: SmartFlareActor(width: double.infinity, height: double.infinity, filename: 'assets/Splash.flr',startingAnimation: newsani),
                  
                ),),

                GestureDetector(
                  onTap:()=> setState(() {
                    homeani="splash";
                    eventani = coorani = contactani= newsani = "none";
                    index = 1;
                  }),
                  child: Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width/5,
                  child: SmartFlareActor(width: double.infinity, height: double.infinity, filename: 'assets/Splash.flr',startingAnimation: homeani),
                  
                ),),

                GestureDetector(
                  onTap:()=> setState(() {
                    coorani ="splash";
                    homeani = eventani = contactani = newsani = "none";
                    index =3;
                  }),
                  child: Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width/5,
                  child: SmartFlareActor(width: double.infinity, height: double.infinity, filename: 'assets/Splash.flr',startingAnimation: coorani),
                  
                ),),

                GestureDetector(
                  onTap:()=> setState(() {
                    contactani ="splash";
                    homeani = coorani = eventani= newsani = "none";
                    index = 4;
                  }),
                  child: Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  width: MediaQuery.of(context).size.width/5,
                  child: SmartFlareActor(width: double.infinity, height: double.infinity, filename: 'assets/Splash.flr',startingAnimation: contactani),
                  
                ),),
                
             ],
            ),
          )
        ],
      ),
    );
  }
}