//import 'package:brl_app/GlobalVariables.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//
//class Articles extends StatefulWidget {
//  @override
//  _ArticlesState createState() => _ArticlesState();
//}
//
//class _ArticlesState extends State<Articles> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.transparent,
//      body: SingleChildScrollView(
//        child: Column(
//          children: <Widget>[
//            SizedBox(height: height*0.06,),
//            Center(child: Text("OUR ARTICLES", style: GoogleFonts.poppins(fontSize: height*0.03,fontWeight: FontWeight.bold),)),
//            SizedBox(height: height*0.02,),
//            Row(
//              children: <Widget>[
//                SizedBox(width: width*0.15,),
//                Expanded(
//                  child: Container(
//                    //color: Colors.red,
//                    height: height*0.45,
//                    child: Swiper(
//                      itemCount: 3,
//
//                      itemBuilder: (BuildContext context , int index){
//                        return Container(
//                          height: 500,
//                          width: 200,
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(20.0),
//                            color: Colors.green,
//                          ),
//                          child: Column(
//                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            children: <Widget>[
//                              SizedBox(height: height*0.01,),
//                              Image.asset("assets/GroupPic1.jpg"),
//                              Text("hello")
//                            ],
//                          ),
//
//
//                        );
//                      },
//                      //pagination: SwiperPagination()
//                      //control: SwiperControl(),
//                      layout: SwiperLayout.STACK,
//                      itemWidth: 300,
//                      //itemHeight: 500,
//                      viewportFraction: 1.5,
//                      scrollDirection: Axis.horizontal,
//                      fade: 2.0,
//                    ),
//
//                  ),
//                )
//              ],
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//
