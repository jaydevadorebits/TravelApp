import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_design/screens/register_screen.dart';
import 'package:travel_app_design/screens/sign_in_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Image.asset(
            'assets/sp.png',
            height: ScreenUtil().setHeight(99.0),
            width: ScreenUtil().setWidth(99.0),
          ),
          new SizedBox(
            height: ScreenUtil().setHeight(18.0),
          ),
          new Text('Travel App', style: GoogleFonts.lato(fontSize: ScreenUtil().setSp(38.0))),
          new SizedBox(
            height: ScreenUtil().setHeight(10.0),
          ),
          new Text('Best way to organize travel',
              style: GoogleFonts.lato(fontSize: ScreenUtil().setSp(12.0))),
          new SizedBox(
            height: ScreenUtil().setHeight(60.0),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
            child: Container(
              width: ScreenUtil().setWidth(250.0),
              height: ScreenUtil().setHeight(45.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.lightBlue),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          new SizedBox(
            height: ScreenUtil().setHeight(14.0),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            },
            child: Container(
              width: ScreenUtil().setWidth(250.0),
              height: ScreenUtil().setHeight(45.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  border: Border.all(color: Colors.lightBlue)),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

}
