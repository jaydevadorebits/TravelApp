import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app_design/screens/dashboard_screen.dart';
import 'package:travel_app_design/screens/setting_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignInScreen> {
  TextEditingController textEmail = TextEditingController();
  TextEditingController textPassword = TextEditingController();

  SharedPreferences registerData;
  bool newUser;

  String email;
  String password;

  Widget _email() {
    return TextFormField(
      controller: textEmail,
      decoration:
          InputDecoration(labelText: 'Email', suffixIcon: Icon(Icons.email)),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget _password() {
    return TextFormField(
      controller: textPassword,
      decoration: InputDecoration(
          labelText: 'Password', suffixIcon: Icon(Icons.remove_red_eye)),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget _buttonSignIn() {
    return GestureDetector(
      onTap: () {
        if (textEmail.text.isEmpty) {
          Fluttertoast.showToast(
              msg: "Please enter email",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM);
        } else if (textPassword.text.isEmpty) {
          Fluttertoast.showToast(
              msg: "Please enter password",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM);
        } else {
          if (textEmail.text.contains(registerData.get('email')) &&
              textPassword.text.contains(registerData.get('password'))) {
            registerData.setBool('isLogin', true);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          } else {
            print('email ' +
                registerData.get('email') +
                " " +
                registerData.get('password'));
            Fluttertoast.showToast(
                msg:
                    "Email and Password do not match....please try again later",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM);
          }
        }

        //
      },
      child: Container(
        width: ScreenUtil().setWidth(250.0),
        height: ScreenUtil().setHeight(52.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.lightBlue),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Sign In',
              style: GoogleFonts.lato(
                  fontSize: ScreenUtil().setSp(18.0), color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    prefUser();
  }

  void prefUser() async {
    registerData = await SharedPreferences.getInstance();
    print('name- ' + registerData.get('name'));
    print('email- ' + registerData.get('email'));
    print('pw- ' + registerData.get('password'));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    width: width,
                    color: Colors.blueAccent,
                    child: Column(
                      children: [
                        new SizedBox(
                          height: MediaQuery.of(context).size.height * 0.10,
                        ),
                        new Image.asset(
                          'assets/sp.png',
                          height: ScreenUtil().setHeight(99.0),
                          width: ScreenUtil().setWidth(99.0),
                        ),
                        new SizedBox(
                          height: ScreenUtil().setHeight(10.0),
                        ),
                        new Text(
                          'Sign In',
                          style: GoogleFonts.lato(
                              fontSize: ScreenUtil().setSp(24.0),
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  10, MediaQuery.of(context).size.height * 0.20, 10, 0),
              child: Center(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _email(),
                        _password(),
                        SizedBox(
                          height: ScreenUtil().setHeight(70.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.height * 0.52, 0, 0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [_buttonSignIn()],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    0, 0, 0, MediaQuery.of(context).size.height * 0.15),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text.rich(TextSpan(
                      text: 'Don\'t have an account? ',
                      style: GoogleFonts.lato(
                          fontSize: ScreenUtil().setSp(14.0),
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: 'Create New',
                            style: GoogleFonts.lato(
                                fontSize: ScreenUtil().setSp(14.0),
                                color: Colors.black45,
                                fontWeight: FontWeight.bold)),
                      ])), //Text("Don't have an account? Create New"),
                ))
          ],
        ),
      ),
    );
  }
}
