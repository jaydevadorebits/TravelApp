import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app_design/screens/dashboard_screen.dart';
import 'package:travel_app_design/screens/home_screen.dart';
import 'package:travel_app_design/screens/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUpScreen> {
  TextEditingController textFullName = TextEditingController();
  TextEditingController textEmail = TextEditingController();
  TextEditingController textPassword = TextEditingController();

  String fullName;
  String email;
  String password;

  SharedPreferences registerData;
  bool newUser;

  Widget _fullName() {
    return TextFormField(
      controller: textFullName,
      decoration: InputDecoration(
          labelText: 'Full Name', suffixIcon: Icon(Icons.person)),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
      },
      onSaved: (String value) {
        fullName = value;
      },
    );
  }

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

  Widget _buttonSignUp() {
    return GestureDetector(
      onTap: () {
        if (textFullName.text.isEmpty) {
          Fluttertoast.showToast(
              msg: "Please enter FullName",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM);
        } else if (textEmail.text.isEmpty) {
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
          registerData.setString('name', textFullName.text);
          registerData.setString('email', textEmail.text);
          registerData.setString('password', textPassword.text);

          print('name ' +
              textFullName.text +
              " email " +
              textEmail.text +
              " pw " +
              textPassword.text);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignInScreen()));
        }
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
              'Sign Up',
              style: GoogleFonts.lato(
                  fontSize: ScreenUtil().setSp(18.0), color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonFacebook() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: ScreenUtil().setWidth(250.0),
        height: ScreenUtil().setHeight(52.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.blueAccent,
            border: Border.all(color: Colors.lightBlue)),
        child: Center(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Text.rich(TextSpan(
                  text: 'Sign Up With ',
                  style: GoogleFonts.lato(
                      fontSize: ScreenUtil().setSp(15), color: Colors.white),
                  children: [
                    TextSpan(
                        text: 'Facebook',
                        style: GoogleFonts.lato(
                            fontSize: ScreenUtil().setSp(18),
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ]))),
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
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: width,
                height: ScreenUtil().setHeight(300.0),
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
                    new Text('Sign Up',
                        style: GoogleFonts.lato(
                            fontSize: ScreenUtil().setSp(20.0),
                            color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    14, MediaQuery.of(context).size.height * 0.36, 14, 0),
                child: Center(
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: ScreenUtil().setHeight(20.0),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: _fullName()),
                        SizedBox(
                          height: ScreenUtil().setHeight(10.0),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: _email()),
                        SizedBox(
                          height: ScreenUtil().setHeight(10.0),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: _password()),
                        SizedBox(
                          height: ScreenUtil().setHeight(70.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, MediaQuery.of(context).size.height * 0.77, 0, 0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _buttonSignUp(),
                      SizedBox(
                        height: ScreenUtil().setHeight(10.0),
                      ),
                      _buttonFacebook(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.96),
                child: Align(
                    alignment: Alignment.center,
                    child: Text.rich(TextSpan(
                        text: 'Already have an account? ',
                        style: GoogleFonts.lato(
                            fontSize: ScreenUtil().setSp(14.0),
                            color: Colors.black45),
                        children: [
                          TextSpan(
                              text: 'Sign In',
                              style: GoogleFonts.lato(
                                  fontSize: ScreenUtil().setSp(14.0),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45))
                        ])) //Text('Already have an account? Sign in')),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
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
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        new Image.asset(
                          'assets/sp.png',
                          height: 99.0,
                          width: 99.0,
                        ),
                        new SizedBox(
                          height: 10,
                        ),
                        new Text('Sign Up',
                            style: GoogleFonts.lato(
                                fontSize: 20.0, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: width,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  14, MediaQuery.of(context).size.height * 0.3, 14, 0),
              child: Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: _fullName()),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: _email()),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: _password()),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, 0, 0, 0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _buttonSignUp(),
                    SizedBox(
                      height: 10,
                    ),
                    _buttonFacebook(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('Already have an account? Sign in')),
            ),
          ],
        ),
      ),
 */
