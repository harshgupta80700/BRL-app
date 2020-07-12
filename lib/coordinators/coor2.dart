//import 'package:brl_app/backg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
  

  const colorblue = Color(0xff1888ca);

class Coordinators2 extends StatefulWidget {
  @override
  _Coordinators2State createState() => _Coordinators2State();
}

class _Coordinators2State extends State<Coordinators2> {
  List<String> names=["Aman Kumar","Anshika Bajpai","Deepika Maurya","Harsh Gupta","Himanshi Singh","Himani Chauhan","Palak Tiwari","Prakhar Chauhan","Rachit Agarwal","Shivam Bisht","Vishesh Dhawan"];
  String url ="https://techcrunch.com/wp-content/uploads/2016/09/2016_01_23_weebly_45251web.jpg?w=730&crop=1";

    @override
  void initState() {
     SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    //DeviceOrientation.portraitDown
  ]);
    super.initState();
  }
    @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   child: BG(),
          // ),
        //   Container(
        //     height: MediaQuery.of(context).size.height,
        //     width: MediaQuery.of(context).size.width,
        //     color: Colors.white30,
        // ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Coordinators", style: GoogleFonts.corben(fontSize: MediaQuery.of(context).size.width*0.11,color: colorblue.withOpacity(1),fontWeight: FontWeight.bold)),
                      //Text("Coordinators",style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.062 ,color: Colors.black,fontFamily: 'Cocogoose'),),
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height*0.02),
                
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(text:"Second",style: GoogleFonts.patrickHand(fontSize: MediaQuery.of(context).size.width*0.1,color: colorblue.withOpacity(1))),
                          TextSpan(text:" Year",style: GoogleFonts.patrickHand(fontSize: MediaQuery.of(context).size.width*0.1,color:Colors.black))
                        ]
                      ))
                      //Text("Second Year",style: GoogleFonts.patrickHand(fontSize: MediaQuery.of(context).size.height*0.06,color: colorblue.withOpacity(1))),
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height*0.04),

                Expanded(child: 
                Container(
                  child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              
              children: <Widget>[

                
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [0,3,6,9].map((i){
                          return Builder(builder: (BuildContext context){
                            return Column(
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.width*0.28,
                                  width: MediaQuery.of(context).size.width*0.28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colorblue.withOpacity(1),
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: MediaQuery.of(context).size.width*0.27,
                                    width: MediaQuery.of(context).size.width*0.27,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                    ),
                                      child: Center(
                                        child: Container(
                                          height: MediaQuery.of(context).size.width*0.26,
                                          width: MediaQuery.of(context).size.width*0.26,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue.withOpacity(.5),
                                            image: DecorationImage(image: NetworkImage(url),fit: BoxFit.fitHeight)
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: MediaQuery.of(context).size.height*0.013),

                                Center(child: Text(names[i],textAlign: TextAlign.center,style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.045,color: Colors.black,),)),
                                
                                SizedBox(height: MediaQuery.of(context).size.height*0.055),
                                

                              ],
                            );
                          });
                        }).toList(),
                      ),
                    ),





                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Column(
                        children: <Widget>[
                          Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [1,4,7].map((i){
                          return Builder(builder: (BuildContext context){
                            return Column(
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.width*0.28,
                                  width: MediaQuery.of(context).size.width*0.28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colorblue.withOpacity(1),
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: MediaQuery.of(context).size.width*0.27,
                                    width: MediaQuery.of(context).size.width*0.27,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                    ),
                                      child: Center(
                                        child: Container(
                                          height: MediaQuery.of(context).size.width*0.26,
                                          width: MediaQuery.of(context).size.width*0.26,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue.withOpacity(.5),
                                            image: DecorationImage(image: NetworkImage(url),fit: BoxFit.fitHeight)
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: MediaQuery.of(context).size.height*0.013),

                                Text(names[i],textAlign: TextAlign.center,style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.045,color: Colors.black),),

                                SizedBox(height: MediaQuery.of(context).size.height*0.055),

                              ],
                            );
                          });
                        }).toList(),
                      ),
                        ],
                      )
                    ),




                    Container(
                      
                      width: MediaQuery.of(context).size.width/3,
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [2,5,8,10].map((i){
                          return Builder(builder: (BuildContext context){
                            return Column(
                              children: <Widget>[
                                Container(
                                height: MediaQuery.of(context).size.width*0.28,
                                width: MediaQuery.of(context).size.width*0.28,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colorblue.withOpacity(1)
                                ),
                                child: Center(
                                    child: Container(
                                      height: MediaQuery.of(context).size.width*0.27,
                                    width: MediaQuery.of(context).size.width*0.27,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                    ),
                                      child: Center(
                                        child: Container(
                                          height: MediaQuery.of(context).size.width*0.26,
                                          width: MediaQuery.of(context).size.width*0.26,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue.withOpacity(.5),
                                            image: DecorationImage(image: NetworkImage(url),fit: BoxFit.fitHeight)
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: MediaQuery.of(context).size.height*0.013),

                                Text(names[i],textAlign: TextAlign.center,style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.045,color: Colors.black ),),

                                SizedBox(height: MediaQuery.of(context).size.height*0.055),

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
          ),
                ))

              ],
            ),
          ),
          

        ],
      );      
  }
}