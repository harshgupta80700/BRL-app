import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String name;
String photoUrl;
double screenheight;
double screenwidth;

Future<String> getUserName() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("UserName");
}

Future<String> getPhotoUrl() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString("PhotoUrl");
}

Future<void> setSharedPreferences(String name, String pic) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString("UserName", name);
  await prefs.setString("PhotoUrl", pic);
}


void deviceNavBarColor(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark
  ));
}

void potraitModeOnly(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

Future<void> launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}