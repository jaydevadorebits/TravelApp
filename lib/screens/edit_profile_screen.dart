import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app_design/screens/login_screen.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EditProfileState();
  }
}

class EditProfileState extends State<EditProfileScreen> {
  SharedPreferences loginData;

  @override
  void initState() {
    super.initState();
    prefUser();
  }

  void prefUser() async {
    loginData = await SharedPreferences.getInstance();
  }

  Widget _buttonLogout() {
    return GestureDetector(
      onTap: () {
        print('logout success');
        loginData.setBool('isLogin', false);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
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
              'Logout',
              style: GoogleFonts.lato(
                  fontSize: ScreenUtil().setSp(18.0), color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: width,
              height: MediaQuery.of(context).size.height * 0.12,
              color: Colors.blueAccent,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14, top: 18),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 16),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Edit Profile',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(17.0)),
                            ))),
                    Padding(
                        padding: EdgeInsets.only(top: 14, right: 20),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Apply',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(13.0)),
                            )))
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.12),
              child: Container(
                color: Colors.blueAccent,
                height: MediaQuery.of(context).size.height * 0.20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.24),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/sp.png',
                  width: ScreenUtil().setWidth(120.0),
                  height: ScreenUtil().setHeight(120.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.43),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'David Wilson',
                  style: GoogleFonts.lato(
                      fontSize: ScreenUtil().setSp(20.0), color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.48),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Mumbai, India',
                  style: GoogleFonts.lato(
                      fontSize: ScreenUtil().setSp(14.0),
                      color: Colors.black45),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 18, top: MediaQuery.of(context).size.height * 0.57),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Private Details',
                  style: GoogleFonts.lato(
                      fontSize: ScreenUtil().setSp(20.0), color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: 18,
                    right: 18,
                    top: MediaQuery.of(context).size.height * 0.63),
                child: Column(
                  children: [
                    Container(
                        width: width,
                        height: ScreenUtil().setHeight(43.0),
                        color: Colors.blue[200],
                        child: Align(
                            alignment: Alignment.center,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 14),
                                        child: new Text(
                                          'Email ',
                                          style: GoogleFonts.lato(
                                              fontSize:
                                                  ScreenUtil().setSp(15.0),
                                              color: Colors.black45),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 14),
                                        child: TextFormField(
                                          textAlign: TextAlign.end,
                                          decoration: InputDecoration(
                                              hintText:
                                                  'davidwilson123@gmail.com',
                                              hintStyle: GoogleFonts.lato(
                                                  fontSize:
                                                      ScreenUtil().setSp(15.0),
                                                  color: Colors.blue[500]),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )
                                  ],
                                )))),
                    SizedBox(
                      height: ScreenUtil().setHeight(13.0),
                    ),
                    Container(
                        width: width,
                        height: ScreenUtil().setHeight(43.0),
                        color: Colors.blue[200],
                        child: Align(
                            alignment: Alignment.center,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 14),
                                        child: new Text(
                                          'Password ',
                                          style: GoogleFonts.lato(
                                              fontSize:
                                                  ScreenUtil().setSp(15.0),
                                              color: Colors.black45),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(right: 14, top: 10),
                                        child: TextFormField(
                                          textAlign: TextAlign.end,
                                          decoration: InputDecoration(
                                              hintText: '*********',
                                              hintStyle: GoogleFonts.lato(
                                                  fontSize:
                                                      ScreenUtil().setSp(15.0),
                                                  color: Colors.blue[500]),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )
                                  ],
                                )))),
                    SizedBox(
                      height: ScreenUtil().setHeight(13.0),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: ScreenUtil().setHeight(43.0),
                              color: Colors.blue[200],
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: new Text(
                                                'Gender ',
                                                style: GoogleFonts.lato(
                                                    fontSize: ScreenUtil()
                                                        .setSp(15.0),
                                                    color: Colors.black45),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 14),
                                              child: TextFormField(
                                                textAlign: TextAlign.end,
                                                decoration: InputDecoration(
                                                    hintText: 'Male',
                                                    hintStyle: GoogleFonts.lato(
                                                        fontSize: ScreenUtil()
                                                            .setSp(14.0),
                                                        color:
                                                            Colors.blue[500]),
                                                    border: InputBorder.none),
                                              ),
                                            ),
                                          )
                                        ],
                                      )))),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(10.0),
                        ),
                        Expanded(
                          child: Container(
                              height: ScreenUtil().setHeight(43.0),
                              color: Colors.blue[200],
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: new Text(
                                                'Age',
                                                style: GoogleFonts.lato(
                                                    fontSize: ScreenUtil()
                                                        .setSp(15.0),
                                                    color: Colors.black45),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 14),
                                              child: TextFormField(
                                                textAlign: TextAlign.end,
                                                decoration: InputDecoration(
                                                    hintText: '21 Year',
                                                    hintStyle: GoogleFonts.lato(
                                                        fontSize: ScreenUtil()
                                                            .setSp(14.0),
                                                        color:
                                                            Colors.blue[500]),
                                                    border: InputBorder.none),
                                              ),
                                            ),
                                          )
                                        ],
                                      )))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(13.0),
                    ),
                    Container(
                        width: width,
                        height: ScreenUtil().setHeight(43.0),
                        color: Colors.blue[200],
                        child: Align(
                            alignment: Alignment.center,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 14),
                                        child: new Text(
                                          'Phone Number ',
                                          style: GoogleFonts.lato(
                                              fontSize:
                                                  ScreenUtil().setSp(15.0),
                                              color: Colors.black45),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 14),
                                        child: TextFormField(
                                          textAlign: TextAlign.end,
                                          decoration: InputDecoration(
                                              hintText: '+20 01256789134',
                                              hintStyle: GoogleFonts.lato(
                                                  fontSize:
                                                      ScreenUtil().setSp(14.0),
                                                  color: Colors.blue[500]),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    )
                                  ],
                                )))),
                    SizedBox(
                      height: ScreenUtil().setHeight(25.0),
                    ),
                    _buttonLogout(),
                    SizedBox(
                      height: ScreenUtil().setHeight(25.0),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

/*
    Padding(
              padding: EdgeInsets.only(left: 18,right: 18,
                  top: MediaQuery.of(context).size.height * 0.63),
              child:
              Container(
                  width: width,
                  height: 40,
                  color: Colors.blueAccent,
                  child: Align(
                      alignment: Alignment.center,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 14),
                                child: new Text(
                                  'Email ',
                                  style: GoogleFonts.lato(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 14),
                                child: new Text(
                                  'davidwilson123@gmail.com',
                                  style: GoogleFonts.lato(
                                      fontSize: 15, color: Colors.white),
                                ),
                              )
                            ],
                          )))),
            )
 */
