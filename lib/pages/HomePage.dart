import 'package:auto_size_text/auto_size_text.dart';
import 'package:brl_app/GlobalVariables.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget{
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{
  
  Widget leftText(double width, String heading, String text,double height) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.09),
      width: width,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text(heading,style:TextStyle(fontSize: width*0.055,color: Color(0xff1888ca))),]
          ),
          SizedBox(height: height*0.01,),
          AutoSizeText(text,textAlign: TextAlign.left,style: TextStyle(fontSize: width*0.04),maxLines: 2,overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }

  Widget rigthText(double width, String heading, String text,double height) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.09),
      width: width,
      child: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text(heading,style:TextStyle(fontSize: width*0.055,color: Color(0xff1888ca))),]
          ),
          SizedBox(height: height*0.01,),
          AutoSizeText(text,textAlign: TextAlign.right,style: TextStyle(fontSize: width*0.04),maxLines: 2,overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }

  Widget imageCarousel() {
   return Carousel(
     boxFit: BoxFit.fill,
     autoplay: true,
     autoplayDuration: Duration(seconds: 3),
     animationCurve: Curves.easeInCubic,
     dotBgColor: Colors.transparent,
     dotColor: Colors.white,
     dotIncreasedColor: Color(0xFF1888ca),
     dotSize: 5,
     images: [
       ExactAssetImage("assets/GroupPic1.jpg"),
       ExactAssetImage("assets/GroupPic1.jpg"),
       ExactAssetImage("assets/GroupPic1.jpg"),
     ],
   );
  }

  @override
  Widget build(BuildContext context) {
    deviceNavBarColor();
    potraitModeOnly();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: screenwidth,
              height: screenheight/2.9+screenwidth*0.1,
              child: Stack(
                children: <Widget>[
                  ClipPath(
                      clipper: MyClipPath2(),
                      child: Container(
                        width: screenwidth,
                        height: screenheight/2.9,
                        color: Color(0xFF1888ac),
                        child: imageCarousel(),
                      )
                  ),
                  Align(
                    alignment: Alignment(0, 1),
                    child: Container(
                      height: screenwidth*0.2,
                      width: screenwidth*0.2,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1888ca)
                      ),
                      child: Center(
                        child: Container(
                          height: screenwidth*0.185,
                          width: screenwidth*0.185,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(screenwidth*0.015),
                              child: Image.asset("assets/brlhex-min.png"),
                            ),
                          ),
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: screenheight*0.01,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: screenwidth*0.07),
              width: screenwidth,
              child: Text("Welcome To BRL",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                    shadows: [Shadow(
                      offset: Offset(.5,.5),
                      blurRadius: 3.0
                    )],
                    color: Color(0xFF1888ca),fontSize: screenwidth*0.1,fontWeight: FontWeight.bold
              )),
            ),

            SizedBox(height: screenheight*0.02,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: screenwidth*0.07),
              child: AutoSizeText(
                "At Blockchain Research Lab, we look forward with the advancement in Blockchain technology and it's recent changes. Since 2019, we’ve tried to provide a high quality service as we grow, our commitment to the needs remains the key driving force behind the establishment of our Lab.",
                maxLines: 7,
                style: TextStyle(
                  fontSize: screenwidth*0.045
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: screenheight*0.04,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: screenwidth*0.09),
              width: screenwidth,
              child: Align(
                alignment: Alignment(0,0),
                child: Text("OUR STRATEGY",style: GoogleFonts.poppins(color: Color(0xff1888ca),fontSize: screenwidth*0.06,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: screenheight*0.03),
            leftText(screenwidth, "Develop", "We develop application on DLT technologies as well as the side technologies", screenheight),
            SizedBox(height: screenheight*0.03),
            leftText(screenwidth, "Deploy", "We provide modern containerised solution to provide seamless and scalable service.", screenheight),
            SizedBox(height: screenheight*0.03),
            leftText(screenwidth, "Distribute", "We connect organisations with a highly transparent and integrable solutions.", screenheight)
            
          ],
        ),
      )
    );
  }
}

class MyClipPath2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-40);
    path.quadraticBezierTo(size.width/4, size.height, size.width/2, size.height);
    path.quadraticBezierTo(size.width-(size.width/4), size.height, size.width, size.height-40);
    path.lineTo((size.width), 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}
