import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_design/screens/flight_result.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlaneTicket extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PlaneState();
  }
}

class PlaneState extends State<PlaneTicket> {
  Widget _buttonSearchFlights() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FlightResultS()));
      },
      child: Container(
        width: ScreenUtil().setWidth(252.0),
        height: ScreenUtil().setHeight(52.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.lightBlue),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Search Flights',
              style: GoogleFonts.lato(
                  fontSize: ScreenUtil().setSp(18), color: Colors.white),
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
          'Plane Ticket ',
          style: GoogleFonts.lato(fontSize: 16.0, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              width: width,
              height: height * 0.25,
              child: Container(
                color: Colors.blue,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'assets/plane.png',
                      height: ScreenUtil().setHeight(92.0),
                      width: ScreenUtil().setWidth(92.0),
                    )),
              ),
            ),
            Positioned(
              width: width,
              top: height * 0.35,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 22, right: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(10.0),
                                  ),
                                  Text(
                                    'From',
                                    style: GoogleFonts.lato(
                                        fontSize: ScreenUtil().setSp(14.0),
                                        color: Colors.black45),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(10.0),
                                    ),
                                    Text(
                                      'To',
                                      style: GoogleFonts.lato(
                                          fontSize: ScreenUtil().setSp(14.0),
                                          color: Colors.black45),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22, right: 16),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1.0,
                          )),
                          SizedBox(
                            width: ScreenUtil().setWidth(16.0),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1.0,
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(16.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22, right: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.departure_board),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(10.0),
                                  ),
                                  Text(
                                    'Departure date',
                                    style: GoogleFonts.lato(
                                        fontSize: ScreenUtil().setSp(14.0),
                                        color: Colors.black45),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.date_range),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(10.0),
                                    ),
                                    Text(
                                      'Return date',
                                      style: GoogleFonts.lato(
                                          fontSize: ScreenUtil().setSp(14.0),
                                          color: Colors.black45),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22, right: 16),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1.0,
                          )),
                          SizedBox(
                            width: ScreenUtil().setWidth(16.0),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1.0,
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(15.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22, right: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.person_outline),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(10.0),
                                  ),
                                  Text(
                                    'Num of Passenger',
                                    style: GoogleFonts.lato(
                                        fontSize: ScreenUtil().setSp(14.0),
                                        color: Colors.black45),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.flight_takeoff),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(10.0),
                                    ),
                                    Text(
                                      'Flight Class',
                                      style: GoogleFonts.lato(
                                          fontSize: ScreenUtil().setSp(14.0),
                                          color: Colors.black45),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22, right: 16),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1.0,
                          )),
                          SizedBox(
                            width: ScreenUtil().setWidth(16.0),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1.0,
                          )),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 20, top: 12),
                          child: Text(
                            'More details',
                          )),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(36.0),
                    ),
                    _buttonSearchFlights(),
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
