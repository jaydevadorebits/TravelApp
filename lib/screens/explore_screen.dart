import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExploreState();
  }
}

class ExploreState extends State<Explore> {
  Widget list = new Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/build.jpg')),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Explore',
          style: GoogleFonts.lato(fontSize: 16.0),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 14, right: 14, top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Popular Tours ',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(18.0)),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                height: ScreenUtil().setHeight(30.0),
                                width: ScreenUtil().setWidth(30.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    //borderRadius: BorderRadius.all(Radius.circular(50))
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 12,
                                  ),
                                )),
                            SizedBox(
                              width: ScreenUtil().setWidth(5.0),
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  height: ScreenUtil().setHeight(30.0),
                                  width: ScreenUtil().setWidth(30.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      //borderRadius: BorderRadius.all(Radius.circular(50))
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ))
                          ],
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            Container(
              margin: EdgeInsets.only(left: 14, right: 14, top: 10),
              height: height * 0.22,
              child: listViewPopularTours(context),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            Container(
              margin: EdgeInsets.only(left: 14, right: 14, top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'New Offers Tours ',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(18.0)),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                height: ScreenUtil().setHeight(30.0),
                                width: ScreenUtil().setWidth(30.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    //borderRadius: BorderRadius.all(Radius.circular(50))
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 12,
                                  ),
                                )),
                            SizedBox(
                              width: ScreenUtil().setWidth(5.0),
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  height: ScreenUtil().setHeight(30.0),
                                  width: ScreenUtil().setWidth(30.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      //borderRadius: BorderRadius.all(Radius.circular(50))
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ))
                          ],
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            Container(
              margin: EdgeInsets.only(left: 14, right: 14, top: 10),
              height: height * 0.22,
              child: listViewPopularTours(context),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            Container(
              margin: EdgeInsets.only(left: 14, right: 14, top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Best Destinations ',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(18.0)),
                    ),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                height: ScreenUtil().setHeight(30.0),
                                width: ScreenUtil().setWidth(30.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    //borderRadius: BorderRadius.all(Radius.circular(50))
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 12,
                                  ),
                                )),
                            SizedBox(
                              width: ScreenUtil().setWidth(5.0),
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  height: ScreenUtil().setHeight(30.0),
                                  width: ScreenUtil().setWidth(30.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      //borderRadius: BorderRadius.all(Radius.circular(50))
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ))
                          ],
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            Container(
              margin: EdgeInsets.only(left: 14, right: 14, top: 10),
              height: height * 0.22,
              child: listViewBestDestinations(context),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
          ],
        ),
      ),
    );
  }
}

Widget listViewPopularTours(BuildContext context) {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(100.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset('assets/build.jpg')),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Text(
                'Venice travel tour',
                style:
                    GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 4),
                      child: FlutterRatingBar(
                        itemSize: 10,
                        initialRating: 3.0,
                        fillColor: Colors.yellow,
                        borderColor: Colors.amber.withAlpha(50),
                        allowHalfRating: true,
                      ),
                    ),
                  ),
                  Text(
                    '20 views',
                    style: GoogleFonts.lato(fontSize: 9),
                  ),
                ],
              )
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(100.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset('assets/build.jpg')),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Text(
                'Venice travel tour',
                style:
                    GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 4),
                      child: FlutterRatingBar(
                        itemSize: 10,
                        initialRating: 3.0,
                        fillColor: Colors.yellow,
                        borderColor: Colors.amber.withAlpha(50),
                        allowHalfRating: true,
                      ),
                    ),
                  ),
                  Text(
                    '20 views',
                    style: GoogleFonts.lato(fontSize: 9),
                  ),
                ],
              )
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(100.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset('assets/build.jpg')),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Text(
                'Venice travel tour',
                style:
                    GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 4),
                      child: FlutterRatingBar(
                        itemSize: 10,
                        initialRating: 3.0,
                        fillColor: Colors.yellow,
                        borderColor: Colors.amber.withAlpha(50),
                        allowHalfRating: true,
                      ),
                    ),
                  ),
                  Text(
                    '20 views',
                    style: GoogleFonts.lato(fontSize: 9),
                  ),
                ],
              )
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(100.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset('assets/build.jpg')),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Text(
                'Venice travel tour',
                style:
                    GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 4),
                      child: FlutterRatingBar(
                        itemSize: 10,
                        initialRating: 3.0,
                        fillColor: Colors.yellow,
                        borderColor: Colors.amber.withAlpha(50),
                        allowHalfRating: true,
                      ),
                    ),
                  ),
                  Text(
                    '20 views',
                    style: GoogleFonts.lato(fontSize: 9),
                  ),
                ],
              )
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(100.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset('assets/build.jpg')),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Text(
                'Venice travel tour',
                style:
                    GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 4),
                      child: FlutterRatingBar(
                        itemSize: 10,
                        initialRating: 3.0,
                        fillColor: Colors.yellow,
                        borderColor: Colors.amber.withAlpha(50),
                        allowHalfRating: true,
                      ),
                    ),
                  ),
                  Text(
                    '20 views',
                    style: GoogleFonts.lato(fontSize: 9),
                  ),
                ],
              )
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(100.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset('assets/build.jpg')),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Text(
                'Venice travel tour',
                style:
                    GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 4),
                      child: FlutterRatingBar(
                        itemSize: 10,
                        initialRating: 3.0,
                        fillColor: Colors.yellow,
                        borderColor: Colors.amber.withAlpha(50),
                        allowHalfRating: true,
                      ),
                    ),
                  ),
                  Text(
                    '20 views',
                    style: GoogleFonts.lato(fontSize: 9),
                  ),
                ],
              )
            ],
          )),
    ],
  );
}

Widget listViewBestDestinations(BuildContext context) {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(105.0),
                width: ScreenUtil().setWidth(190.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset(
                    'assets/build.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0)
              ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(105.0),
                width: ScreenUtil().setWidth(190.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset(
                    'assets/build.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(105.0),
                width: ScreenUtil().setWidth(190.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset(
                    'assets/build.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(105.0),
                width: ScreenUtil().setWidth(190.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset(
                    'assets/build.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(105.0),
                width: ScreenUtil().setWidth(190.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset(
                    'assets/build.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
            ],
          )),
      Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: ScreenUtil().setHeight(105.0),
                width: ScreenUtil().setWidth(190.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset(
                    'assets/build.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(4.0),
              ),
            ],
          )),
    ],
  );
}
