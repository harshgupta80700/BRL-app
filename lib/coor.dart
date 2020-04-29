//import 'dart:html';

import 'package:brl_app/backg.dart';
import 'package:flutter/material.dart';
//import 'package:auto_size_text/auto_size_text.dart';

class Coordinators2 extends StatefulWidget {
  @override
  _Coordinators2State createState() => _Coordinators2State();
}

class _Coordinators2State extends State<Coordinators2> {
  List<String> names=["harsh","abcdefghi","gupta","abcdef","mmy","fig"];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          // Container(
          //   child: Image.asset("assets/leaves.jpg",fit: BoxFit.fill,)
          //   //color: Colors.blueAccent,
          // ),
          BG(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              
              children: <Widget>[

                SizedBox(height: MediaQuery.of(context).size.height*0.026),
                
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Coordinators",style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.062 ,color: Colors.black,fontFamily: 'Cocogoose'),),
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Second year",style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.05,color: Colors.black),),
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height*0.04),

                Row(
                  children: <Widget>[
                    Container(
                     // height: 200.0,
                      width: MediaQuery.of(context).size.width/3,
                      //color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [0,1,2,3].map((i){
                          return Builder(builder: (BuildContext context){
                            return Column(
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.width*0.25,
                                  width: MediaQuery.of(context).size.width*0.25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                  ),
                                ),

                                SizedBox(height: MediaQuery.of(context).size.height*0.013),

                                Text(names[i],style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,color: Colors.black),),

                                SizedBox(height: MediaQuery.of(context).size.height*0.043),

                              ],
                            );
                          });
                        }).toList(),
                      ),
                    ),





                    Container(
                      //height: 200.0,
                      width: MediaQuery.of(context).size.width/3,
                      //color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          //SizedBox(height: MediaQuery.of(context).size.height*0.25,width: MediaQuery.of(context).size.width/3,),
                          // Container(
                          //   height: MediaQuery.of(context).size.width*0.303,
                            
                          // ),
                          //Text("harsh\n\n\n\n",style: TextStyle(color: Colors.white),),
                          Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [0,1,2].map((i){
                          return Builder(builder: (BuildContext context){
                            return Column(
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.width*0.25,
                                  width: MediaQuery.of(context).size.width*0.25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                ),

                                SizedBox(height: MediaQuery.of(context).size.height*0.013),

                                Text(names[i],style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,color: Colors.black),),

                                SizedBox(height: MediaQuery.of(context).size.height*0.043),

                              ],
                            );
                          });
                        }).toList(),
                      ),
                        ],
                      )
                    ),




                    Container(
                      //height: 200.0,
                      width: MediaQuery.of(context).size.width/3,
                      //color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [0,1,2,5].map((i){
                          return Builder(builder: (BuildContext context){
                            return Column(
                              children: <Widget>[
                                Container(
                                height: MediaQuery.of(context).size.width*0.25,
                                width: MediaQuery.of(context).size.width*0.25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // border: Border.all(
                                  //   width: MediaQuery.of(context).size.width*0.01,
                                  //   color: Colors.white

                                  // ),
                                  color: Colors.yellow
                                ),
                                ),

                                SizedBox(height: MediaQuery.of(context).size.height*0.013),

                                Text(names[i],style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.02,color: Colors.black ),),

                                SizedBox(height: MediaQuery.of(context).size.height*0.043),

                              ],
                            );
                          });
                        }).toList(),
                      ),
                    )
                  ],
                )


              ],
            ),
          )

        ],
      ),      
    );
  }
}