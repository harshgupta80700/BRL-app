import 'package:brl_app/GlobalVariables.dart';
import 'package:brl_app/pages/CoordinatorPage.dart';
//import 'package:brl_app/Services/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:http/http.dart' as http;

class ContactUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactUsState();
  }
}

class ContactUsState extends State<ContactUs> {
//  UserModel _userModel;
//
//  Future<UserModel> createuser(String name, String email, String subject, String message) async{
//
//    final String apiUrl = "https://brl-apis.herokuapp.com/contact-us/";
//
//    final response = await http.post(apiUrl,body: {
//      "name": name,
//      "email": email,
//      "subject": subject,
//      "message": message
//    });
//
//    print(response.statusCode);
//
//
////    if(response.statusCode == 1){
////      final String responsestring = response.body;
////      return usermodelFromJson(responsestring);
////    }else{
////      print("naa bhai");
////      return null;
////    }
//
//  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final subjectcontroller = TextEditingController();
  final messagecontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    namecontroller.text = emailcontroller.text = subjectcontroller.text = messagecontroller.text = null;
  }






  @override
  Widget build(BuildContext context) {

    Widget _buildtextFormField(String title, int maxlines, controller){
      return Container(
//      padding: EdgeInsets.symmetric(horizontal: screenwidth*0.03),
//      margin: EdgeInsets.symmetric(horizontal: screenwidth*0.05),
        child: Column(
          children: <Widget>[
            SizedBox(height: screenheight*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 5,),
                Text(title,style: TextStyle(fontSize: screenwidth*0.05),),
              ],
            ),
            SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenwidth*0.03),
                color: Colors.white,
              ),
              child: TextFormField(
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Name is Required';
                  }

                  return null;
                },
                controller: controller,
                decoration: InputDecoration(
                    border: InputBorder.none
                ),
                cursorColor: Color(0xff1888ca),
                maxLines: maxlines,
              ),
            )
          ],
        ),
      );
    }

    Widget _buildEmail() {
      return Container(
//      padding: EdgeInsets.symmetric(horizontal: screenwidth*0.03),
//      margin: EdgeInsets.symmetric(horizontal: screenwidth*0.05),
        child: Column(
          children: <Widget>[
            SizedBox(height: screenheight*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 5,),
                Text("Email",style: TextStyle(fontSize: screenwidth*0.05),),
              ],
            ),
            SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenwidth*0.03),
                color: Colors.white,
              ),
              child: TextFormField(
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Email is Required';
                  }

                  if (!RegExp(
                      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                      .hasMatch(value)) {
                    return 'Please enter a valid email Address';
                  }

                  return null;
                },
                controller: emailcontroller,

                decoration: InputDecoration(
                    border: InputBorder.none
                ),
                cursorColor: Color(0xff1888ca),
              ),
            )
          ],
        ),
      );
    }

    Widget formFeild ({String title, int maxlines, controller }){
      return Column(
        children: <Widget>[
          SizedBox(height: screenheight*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 5,),
              Text(title,style: TextStyle(fontSize: screenwidth*0.05),),
            ],
          ),
          SizedBox(height: 8,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenwidth*0.03),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none
              ),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Name is Required';
                }

                return null;
              },
              onSaved: (String value) {
                controller.text = value;
              },
              cursorColor: Color(0xff1888ca),
              maxLines: maxlines,
              controller: controller,
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: (){
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: screenheight*0.1),
                Text("CONTACT US",style: GoogleFonts.poppins(fontSize: screenwidth*0.1),),
                Container(
                  //alignment: Alignment(-1, 1),
                  margin: EdgeInsets.only(left: screenwidth*0.065,right: screenwidth*0.03,top: screenheight*0.04),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenwidth*0.05),
                    color: Color(0xff1888ca).withOpacity(0.9),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: screenwidth*0.05,vertical: screenheight*0.05),
                    child: Column(
                      children: <Widget>[
//                        formFeild(title: "Name",maxlines: 1,controller: namecontroller),
//                        formFeild(title: "Email",maxlines:1,controller: emailcontroller),
//                        formFeild(title: "Subject", maxlines: 1, controller: subjectcontroller),
//                        formFeild(title: "Message",maxlines: 7,controller: messagecontroller),
                      _buildtextFormField("Name", 1, namecontroller),
                      _buildEmail(),
                      _buildtextFormField("Subject", 1, subjectcontroller),
                      _buildtextFormField("Message",4 , messagecontroller),
                        SizedBox(height: screenheight*0.06,),
                        GestureDetector(
                          onTap: ()  {
                            RegExp regExp = new RegExp(
                              r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$",
                              caseSensitive: false,
                              multiLine: false,
                            );
                            if (!_formKey.currentState.validate()) {
                              return;
                            }

                            _formKey.currentState.save();

                            print(namecontroller.text);
                            print(emailcontroller.text);
                            print(messagecontroller.text);
                            print(subjectcontroller.text);




//                            if(namecontroller.text == null || emailcontroller.text == null || subjectcontroller.text == null ||  messagecontroller.text == null){
//                              print("not possible with this");
//                            }


                          },
                          child: Container(
                              width: screenwidth*0.45,
                              height: screenheight*0.07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(screenwidth*0.3),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xff1888ca),
                                        offset: Offset(1, 1),
                                        blurRadius: 2.0,
                                        spreadRadius: 0.5
                                    ),
                                  ]
                              ),
                              child: Center(child: Text("SUBMIT",style: TextStyle(fontSize: screenwidth*0.06),),)
                          ),
                        )


                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}