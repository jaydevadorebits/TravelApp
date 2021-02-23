import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_design/screens/edit_profile_screen.dart';

class SettingScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SettingState();
  }

}

class SettingState extends State<SettingScreen>
{

  @override
  Widget build(BuildContext context)
  {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:
          [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.46,
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
                        'David Wilson',
                        style:
                            GoogleFonts.lato(fontSize: ScreenUtil().setSp(22.0), color: Colors.white),
                      ),
                      new SizedBox(
                        height: ScreenUtil().setHeight(6.0),
                      ),
                      new Text(
                        'Mumbai, India',
                        style:
                            GoogleFonts.lato(fontSize: ScreenUtil().setSp(12.0), color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.height * 0.46, 0, 0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(
                          height: ScreenUtil().setHeight(20.0),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: ScreenUtil().setWidth(30.0),
                                ),
                                Icon(
                                  Icons.brightness_5,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(20.0),
                                ),
                                Text(
                                  'Social Networks',
                                  style: GoogleFonts.lato(
                                      fontSize: ScreenUtil().setSp(16.0), color: Colors.blueAccent),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 0),
                              child: Divider(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: ScreenUtil().setWidth(30.0),
                                ),
                                Icon(
                                  Icons.bookmark,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(20.0),
                                ),
                                Text(
                                  'Travel guide',
                                  style: GoogleFonts.lato(
                                      fontSize: ScreenUtil().setSp(16.0), color: Colors.blueAccent),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 0),
                              child: Divider(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: ScreenUtil().setWidth(30.0),
                                ),
                                Icon(
                                  Icons.notifications,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(20.0),
                                ),
                                Text(
                                  'Notification',
                                  style: GoogleFonts.lato(
                                      fontSize: ScreenUtil().setSp(16.0), color: Colors.blueAccent),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 0),
                              child: Divider(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: ScreenUtil().setWidth(30.0),
                                ),
                                Icon(
                                  Icons.help,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(20.0),
                                ),
                                Text(
                                  'Help',
                                  style: GoogleFonts.lato(
                                      fontSize: ScreenUtil().setSp(16.0), color: Colors.blueAccent),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 0),
                              child: Divider(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: ScreenUtil().setWidth(30.0),
                                ),
                                Icon(
                                  Icons.feedback,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(20.0),
                                ),
                                Text(
                                  'Feedback',
                                  style: GoogleFonts.lato(
                                      fontSize: ScreenUtil().setSp(16.0), color: Colors.blueAccent),
                                )
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(30.0),
                            ),
                            Divider(
                              color: Colors.black45,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.black45,
                                  ),
                                  VerticalDivider(
                                    thickness: 1.0,
                                  ),
                                  Icon(
                                    Icons.lock,
                                    color: Colors.black45,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    0, MediaQuery.of(context).size.height * 0.06, 15, 0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfileScreen()));
                    },
                  ),
                ))
          ],
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
                          height: 70,
                        ),
                        new Image.asset(
                          'assets/sp.png',
                          height: 99,
                          width: 99,
                        ),
                        new SizedBox(
                          height: 10,
                        ),
                        new Text(
                          'David Wilson',
                          style: GoogleFonts.lato(
                              fontSize: 22, color: Colors.white),
                        ),
                        new SizedBox(
                          height: 6,
                        ),
                        new Text(
                          'Mumbai, India',
                          style: GoogleFonts.lato(
                              fontSize: 12, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.brightness_5,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Social Networks',
                                  style: GoogleFonts.lato(
                                      fontSize: 16, color: Colors.blueAccent),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 0),
                              child: Divider(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.bookmark,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Travel guide',
                                  style: GoogleFonts.lato(
                                      fontSize: 16, color: Colors.blueAccent),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 0),
                              child: Divider(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.notifications,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Notification',
                                  style: GoogleFonts.lato(
                                      fontSize: 16, color: Colors.blueAccent),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 0),
                              child: Divider(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.help,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Help',
                                  style: GoogleFonts.lato(
                                      fontSize: 16, color: Colors.blueAccent),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 0),
                              child: Divider(
                                color: Colors.black45,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.feedback,
                                  color: Colors.blueAccent,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Feedback',
                                  style: GoogleFonts.lato(
                                      fontSize: 16, color: Colors.blueAccent),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              color: Colors.black45,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 15, 0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfileScreen()));
                    },
                  ),
                ))
          ],
        ),
      ),
 */
