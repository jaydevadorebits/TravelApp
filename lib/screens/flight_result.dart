import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_design/screens/flight_result_list.dart';


class FlightResultS extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FlightResultState();
  }
}

class FlightResultState extends State<FlightResultS> {
  Widget _buttonICanBook() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: ScreenUtil().setWidth(100),
        height: ScreenUtil().setHeight(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        child: Center(
          child: Text(
            'I Can Book',
            style: GoogleFonts.lato(
                fontSize: ScreenUtil().setSp(11), color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _buttonICanBookBlue() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: ScreenUtil().setWidth(100),
        height: ScreenUtil().setHeight(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.blue),
        child: Center(
          child: Text(
            'I Can Book',
            style: GoogleFonts.lato(
                fontSize: ScreenUtil().setSp(11), color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buttonFindNow() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FlightList()));
      },
      child: Container(
        width: ScreenUtil().setWidth(250.0),
        height: ScreenUtil().setHeight(50.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.lightBlue),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Find Now',
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
      appBar: AppBar(
        title: Text(
          'Flights Results ',
          style: GoogleFonts.lato(fontSize: 16.0, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: width,
                height: height * 0.25,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your travel price : 700',
                      style:
                          GoogleFonts.lato(fontSize: ScreenUtil().setSp(16.0), color: Colors.white),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10.0),
                    ),
                    _buttonICanBook(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height * 0.20,
              width: width,
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: ScreenUtil().setHeight(130.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text.rich(TextSpan(
                                      text: 'Min Price: ',
                                      style: GoogleFonts.lato(
                                          fontSize: ScreenUtil().setSp(14)),
                                      children: [
                                        TextSpan(
                                            text: '400',
                                            style: GoogleFonts.lato(
                                                fontSize:
                                                    ScreenUtil().setSp(14),
                                                fontWeight: FontWeight.bold))
                                      ])),
                                  /*Text(
                                    'Min Price: 400Rs',
                                    style: GoogleFonts.lato(
                                        fontSize: ScreenUtil().setSp(14),
                                        color: Colors.black45),
                                  ),*/
                                  SizedBox(
                                    height: ScreenUtil().setHeight(10),
                                  ),
                                  _buttonICanBookBlue(),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(10),
                          ),
                          Expanded(
                            child: Container(
                              height: ScreenUtil().setHeight(130),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text.rich(TextSpan(
                                      text: 'Average Price: ',
                                      style: GoogleFonts.lato(
                                          fontSize: ScreenUtil().setSp(14)),
                                      children: [
                                        TextSpan(
                                            text: '600',
                                            style: GoogleFonts.lato(
                                                fontSize:
                                                    ScreenUtil().setSp(14),
                                                fontWeight: FontWeight.bold))
                                      ])),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(10),
                                  ),
                                  _buttonICanBookBlue(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Container(
                      width: width,
                      height: ScreenUtil().setHeight(130),
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        new BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                        )
                      ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(TextSpan(
                              text: 'Maximum Price: ',
                              style: GoogleFonts.lato(
                                  fontSize: ScreenUtil().setSp(14)),
                              children: [
                                TextSpan(
                                    text: '800',
                                    style: GoogleFonts.lato(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.bold))
                              ])),
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),
                          _buttonICanBookBlue(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(35),
                    ),
                    _buttonFindNow()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
