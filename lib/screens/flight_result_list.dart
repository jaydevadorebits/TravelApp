import 'dart:convert';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_design/model/post.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app_design/screens/tour_screen.dart';

class FlightList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FlightListState();
  }
}

class FlightListState extends State<FlightList> {
  Future callback;
  bool isLoading = true;
  List<PostModel> postModels = [];

  @override
  void initState() {
    super.initState();
    fetchPost();
  }

  Future<List<PostModel>> fetchPost() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == 200) {
      // If the call to the server was successful (returns OK), parse the JSON.
      List jsonResponse = json.decode(response.body);
      setState(() {
        postModels = jsonResponse
            .map<PostModel>((json) => PostModel.fromJson(json))
            .toList();
        isLoading = false;
      });

      print("call success" + " 200");
      return jsonResponse.map((e) => new PostModel.fromJson(e)).toList();
    } else {
      print("call else ");
      // If that call was not successful (response was unexpected), it throw an error.
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flight Results',
          style: GoogleFonts.lato(
              fontSize: ScreenUtil().setSp(16.0), color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: width,
                      height: height * 0.20,
                      color: Colors.blue,
                    ),
                  ),
                  Positioned(
                      top: height * 0.15,
                      width: width,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      new BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 5)
                                    ],
                                    borderRadius: BorderRadius.circular(3)),
                                height: height * 0.19,
                                width: width,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 6, right: 2),
                                          child: Expanded(
                                            child: new Column(
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      new Icon(
                                                        Icons.location_on,
                                                        color: Colors.lightBlue,
                                                      ),
                                                      new SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(5),
                                                      ),
                                                      new Text(
                                                        'Dubai,UAE',
                                                        style: GoogleFonts.lato(
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(14)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: ScreenUtil()
                                                      .setHeight(20),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      new Icon(
                                                        Icons.ac_unit,
                                                        color: Colors.lightBlue,
                                                      ),
                                                      new SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(5),
                                                      ),
                                                      new Text('First Class',
                                                          style: GoogleFonts.lato(
                                                              fontSize:
                                                                  ScreenUtil()
                                                                      .setSp(
                                                                          14))),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 4),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      new Icon(
                                                        Icons.date_range,
                                                        color: Colors.lightBlue,
                                                      ),
                                                      new SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(5),
                                                      ),
                                                      new Text(
                                                        'March,7,2017',
                                                        style: GoogleFonts.lato(
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(14)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: ScreenUtil()
                                                      .setHeight(20),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      new Icon(
                                                        Icons.adjust,
                                                        color: Colors.lightBlue,
                                                      ),
                                                      new SizedBox(
                                                        width: ScreenUtil()
                                                            .setWidth(5),
                                                      ),
                                                      new Text('800',
                                                          style: GoogleFonts.lato(
                                                              fontSize:
                                                                  ScreenUtil()
                                                                      .setSp(
                                                                          14))),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    new Icon(
                                                      Icons.person_outline,
                                                      color: Colors.lightBlue,
                                                    ),
                                                    new SizedBox(
                                                      width: ScreenUtil()
                                                          .setWidth(5),
                                                    ),
                                                    new Text(
                                                      '1 Passenger',
                                                      style: GoogleFonts.lato(
                                                          fontSize: ScreenUtil()
                                                              .setSp(14)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height:
                                                    ScreenUtil().setHeight(20),
                                              ),
                                              _buttonEditSearch(context)
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ],
                      )),
                  Positioned(
                    top: height * 0.35,
                    child: Container(
                      width: width,
                      height: height,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: listView(context, postModels),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

Widget _buttonEditSearch(BuildContext context) {

  return GestureDetector(
    onTap: () {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => TourScreen()));
    },
    child: Container(
      width: ScreenUtil().setWidth(100.0),
      height: ScreenUtil().setHeight(30.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.blue),
      child: Center(
        child: Text(
          'Edit Search',
          style: GoogleFonts.lato(
              fontSize: ScreenUtil().setSp(11.0), color: Colors.white),
        ),
      ),
    ),
  );
}

Widget listView(BuildContext context, List<PostModel> postModel) {
  List<PostModel> post = postModel;
  print("postList " + post.length.toString() + " list");

  return ListView.builder(
      itemCount: post.length,
      itemBuilder: (BuildContext context, int index) {
        PostModel model = post[index];
        return cardWidget(context, model);
      });
}

Widget cardWidget(BuildContext context, PostModel postModel) {
  return Card(
    elevation: 2,
    margin: EdgeInsets.fromLTRB(2, 4, 2, 4),
    child: Container(
      child: Container(
        height: ScreenUtil().setHeight(115.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 30,
              child: Container(
                child: Image.asset(
                  'assets/sp.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 70,
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: ScreenUtil().setHeight(15.0),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: FlutterRatingBar(
                                itemSize: 10,
                                initialRating: 3.0,
                                fillColor: Colors.yellow,
                                borderColor: Colors.amber.withAlpha(50),
                                allowHalfRating: true,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: new Text(
                                'Jumeirah Creekside Hotel',
                                style: GoogleFonts.lato(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(6.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: new Text(
                                'Trade center,Dubai',
                                style: GoogleFonts.lato(
                                  fontSize: ScreenUtil().setSp(10.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          '800,00',
                          style: GoogleFonts.lato(
                              fontSize: ScreenUtil().setSp(14.0),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(top: 10, right: 5),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.black45,
                          )),
                    )
                  ],
                ),

                /*Column(
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: new Text(
                          'Jumeirah Creekside Hotel',
                          style: GoogleFonts.lato(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: new Text(
                          'Trade center,Dubai',
                          style: GoogleFonts.lato(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),*/
              ),
            )
          ],
        ),
      ),
    ),
  );
}

/*Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    new Icon(
                                      Icons.location_on,
                                      color: Colors.lightBlue,
                                    ),
                                    new SizedBox(
                                      width: ScreenUtil().setWidth(5),
                                    ),
                                    new Text(
                                      'Dubai,UAE',
                                      style: GoogleFonts.lato(
                                          fontSize: ScreenUtil().setSp(14)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    new Icon(
                                      Icons.date_range,
                                      color: Colors.lightBlue,
                                    ),
                                    new SizedBox(
                                      width: ScreenUtil().setWidth(5),
                                    ),
                                    new Text(
                                      'March,7,2017',
                                      style: GoogleFonts.lato(
                                          fontSize: ScreenUtil().setSp(14)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    new Icon(
                                      Icons.person_outline,
                                      color: Colors.lightBlue,
                                    ),
                                    new SizedBox(
                                      width: ScreenUtil().setWidth(5),
                                    ),
                                    new Text(
                                      '1 Passenger',
                                      style: GoogleFonts.lato(
                                          fontSize: ScreenUtil().setSp(14)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    new Icon(
                                      Icons.ac_unit,
                                      color: Colors.lightBlue,
                                    ),
                                    new SizedBox(
                                      width: ScreenUtil().setWidth(5),
                                    ),
                                    new Text('First Class',
                                        style: GoogleFonts.lato(
                                            fontSize: ScreenUtil().setSp(14))),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    new Icon(
                                      Icons.adjust,
                                      color: Colors.lightBlue,
                                    ),
                                    new SizedBox(
                                      width: ScreenUtil().setWidth(5),
                                    ),
                                    new Text('800',
                                        style: GoogleFonts.lato(
                                            fontSize: ScreenUtil().setSp(14))),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    _buttonEditSearch(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )*/
