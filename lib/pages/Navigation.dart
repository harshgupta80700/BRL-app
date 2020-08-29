import 'dart:async';
import 'package:brl_app/pages/CoordinatorPage.dart';
import 'package:brl_app/pages/HomePage.dart';
import 'ContactUs.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:brl_app/pages/background.dart';
import 'package:flutter/material.dart';
import 'package:brl_app/GlobalVariables.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

int index =1;

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  StreamController<bool> isSideBarOpenedStreamController;
  Stream<bool> isSideBarOpenedStream;
  StreamSink<bool> isSideBarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,duration: _animationDuration);
    isSideBarOpenedStreamController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedStreamController.stream;
    isSideBarOpenedSink = isSideBarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedStreamController.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed(){
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus==AnimationStatus.completed;
    if(isAnimationCompleted){
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
    }else{
      isSideBarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  Widget pageView() {
    switch(index){
      case 1: return Homepage();
      break;
      case 2: return Coordinators();
      break;
      case 3: return Container();
      break;
      case 4: return ContactUs();
    }
    return Homepage();
  }
  @override
  Widget build(BuildContext context) {
    deviceNavBarColor();
    potraitModeOnly();
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Stack(
        children: <Widget>[
          BackGround(),
          pageView(),
          //SideBar(),
      StreamBuilder<bool>(          //sidebar code
        initialData: false,
        stream: isSideBarOpenedStream,
        builder: (context,isSideBarOpenedAsync){
          return AnimatedPositioned(
            duration: _animationDuration,
            top: 0,
            bottom: 0,
            left: isSideBarOpenedAsync.data ? 0 : -screenwidth,
            right: isSideBarOpenedAsync.data ? screenwidth*0.1: screenwidth-screenwidth*0.13,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color(0xFF1888ca).withOpacity(0.95),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: screenheight*0.06),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          //height: Height*0.12,
                          //color: Colors.red,
                          width: screenwidth,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: screenwidth-40,
                                //color: Colors.green,
                                height: screenheight*0.1,
                                child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(photoUrl),
                                        radius: screenheight*0.05,
                                      ),
                                      SizedBox(width: screenwidth*0.08,),
                                      Expanded(
                                          child: Container(
                                              child:Align(
                                                alignment: Alignment(-1,1),
                                                child: Text("Hi",style:GoogleFonts.oleoScript(fontSize: screenwidth*.08)),
                                              )
                                          )

                                      ),
                                    ]),
                              ),

                              SizedBox(height: screenheight*0.005,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  AutoSizeText(name,maxLines: 1,style: GoogleFonts.salsa(fontSize: screenwidth*0.09,color: Colors.white),softWrap: true,overflow: TextOverflow.ellipsis,)
                                  //Text(name,textAlign: TextAlign.left,style: ,)
                                ],
                              )


                            ],
                          ),
                        ),
                       Divider(height: screenheight*0.025,
                          thickness: 0.5,
                          color: Colors.white.withOpacity(.4),
                          indent: 25,
                          endIndent: 25,
                        ),
                        Row(
                          children: <Widget>[
                            //SizedBox(width: Width*0.03,),
                            Container(
                              height: screenheight*0.05,
                              width: 4.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: index==1?Colors.white: Colors.transparent
                              ),
                            ),
                            MenuItem(icon: Icons.home,title: "Home",onTap:(){
                              setState(() {
                                index = 1;
                              });
                              onIconPressed();
                            },),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            //SizedBox(width: Width*0.03,),
                            Container(
                              height: screenheight*0.05,
                              width: 4.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: index==2?Colors.white: Colors.transparent
                              ),
                            ),
                            MenuItem(icon: Icons.people,title: "Coordinators",onTap:(){
                              setState(() {
                                index = 2;
                              });
                              onIconPressed();
                            }),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            //SizedBox(width: Width*0.03,),
                            Container(
                              height: screenheight*0.05,
                              width: 4.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: index==3?Colors.white: Colors.transparent
                              ),
                            ),
                            MenuItem(icon: Icons.book,title: "Articles",onTap:(){
                              setState(() {
                                index = 3;
                              });
                              onIconPressed();
                            },index: 3,),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Container(
                              height: screenheight*0.05,
                              width: 4.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: index==4?Colors.white: Colors.transparent
                              ),
                            ),
                            MenuItem(icon: Icons.phone,title: "Contact Us",onTap:(){
                              setState(() {
                                index = 4;
                              });
                              onIconPressed();
                            },),
                          ],
                        ),





                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white.withOpacity(.4),
                                  indent: 30,
                                  endIndent: 30,
                                ),
                                SizedBox(height: screenheight*0.009,),
                                Container(
                                  padding: EdgeInsets.fromLTRB(screenwidth*0.15, 0, screenwidth*0.15, screenheight*0.02),
                                  child: Image.asset("assets/blockchainlogowhite-min.png"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, -0.8),
                  child: GestureDetector(
                    onTap: (){
                      onIconPressed();
                    },
                    child: ClipPath(
                      clipper: CustomMenuClipper(),
                      child: Container(
                        width:35,
                        height: 110,
                        color: Color(0xFF1888ca).withOpacity(0.95),
                        child: Center(
                          child: AnimatedIcon(
                            progress: _animationController.view,
                            icon: AnimatedIcons.menu_close,
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );

        },
      )

      ],
      ),
      //drawer: SideBar(),
    );
  }
}


class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  final bool color;
  final int index;


  const MenuItem({Key key, this.icon, this.title,this.onTap,this.color,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:Column(
            children: <Widget>[
              Container(
                height: screenheight*0.09,
                width: screenwidth-screenwidth*0.23,
                color: Colors.transparent,
                child:Row(
                  children: <Widget>[
                    SizedBox(width: screenwidth*.045,),
                    Icon(icon,size:screenheight*0.035,color: Color(0xFF000272),),
                    SizedBox(width: screenwidth*.05,),
                    Text(title,style: GoogleFonts.robotoSlab(fontSize: screenwidth*0.06),)
                  ],
                ) ,
              ),
              SizedBox(height: screenheight*.0001,)
            ],
          ),
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.transparent;

    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width-1, height/2-20, width, height/2);
    path.quadraticBezierTo(width+1, height/2+20, 10, height-16);
    path.quadraticBezierTo(0, height-8, 0, height);
    //path.quadraticBezierTo(height, width, height-8, height-8);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}

