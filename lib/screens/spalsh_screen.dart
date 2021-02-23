import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:travel_app_design/screens/login_screen.dart';

import 'dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  SharedPreferences loginData;
  bool newUser;

  @override
  void initState() {
    super.initState();

    prefUser();
  }

  void prefUser() async {
    loginData = await SharedPreferences.getInstance();
    newUser = loginData.getBool('isLogin') ?? false;
    print(newUser);

    if (newUser) {
      Timer(
          Duration(seconds: 3),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Dashboard())));
    } else {
      Timer(
          Duration(seconds: 3),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Image.asset(
                  'assets/sp.png',
                  height: 94.0,
                  width: 94.0,
                ),
                new SizedBox(
                  height: 10,
                ),
                new Text('Travel App', style: GoogleFonts.lato(fontSize: 30.0)),
                /*new Align(
                  alignment: Alignment.bottomCenter,
                  child: new Container(
                      width: 100,
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.lightBlue,
                      )),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }

}
