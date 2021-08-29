import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  static const ROUTE_NAME = '/splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          /// Set Background image in splash screen layout (Click to open code)
          decoration: BoxDecoration(
              color: Colors.white),
          child: Image.asset("assets/games.png"),
        ),

    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage()async {
    bool isLogin=false;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey('isLogin')) {
      isLogin=prefs.getBool('isLogin');
    }
    if(isLogin==true){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Home()),
      );
    }else{
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Login()),
      );
    }
  }
}
