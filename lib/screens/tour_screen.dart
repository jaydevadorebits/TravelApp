import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_design/model/post.dart';
import 'package:http/http.dart' as http;

class TourScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TourState();
  }
}

class TourState extends State<TourScreen> {
  Future callback;
  bool isLoading = true;
  List<PostModel> postModels;

  final _controller = ScrollController();
  final _height = 100.0;

  @override
  void initState() {
    super.initState();
    fetchModels();
  }

  _animateToIndex(i) =>
      _controller.animateTo(100.0 * i,
          duration: Duration(seconds: 2), curve: Curves.easeOut);

  Future<List<PostModel>> fetchModels() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      setState(() {
        postModels = jsonResponse
            .map<PostModel>((json) => PostModel.fromJson(json))
            .toList();
        isLoading = false;
      });

      print('success 200');
      return jsonResponse.map((e) => PostModel.fromJson(e)).toList();
    } else {
      print('else failed');
      throw Exception('Failed to load post ');
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Tours',
          style: GoogleFonts.lato(
              fontSize: ScreenUtil().setSp(16.0), color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
              width: width,
              height: height * 0.17,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: height * 0.14,
              width: width,
              child: Container(
                margin: EdgeInsets.only(left: 14, right: 14),
                height: ScreenUtil().setHeight(50),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 14,
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.black45,
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Search',
                              style: GoogleFonts.lato(
                                  fontSize: ScreenUtil().setSp(18.0),
                                  color: Colors.black45),
                            )),
                      ],
                    )),
              ),
            ),
            Positioned(
              top: height * 0.23,
              child: Container(
                height: height,
                width: width,
                child: listView(context, postModels, _controller),
              ),
            )
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.title,
          color: Colors.white,
        ),
        onPressed: () {
          _animateToIndex(5);
        },
      ),*/
    );
  }
}

Widget listView(BuildContext context, List<PostModel> postModel,
    ScrollController controllerr) {
  List<PostModel> post = postModel;
  print("postList " + post.length.toString() + " list");

  return ListView.builder(
      controller: controllerr,
      itemCount: post.length,
      itemBuilder: (BuildContext context, int index) {
        PostModel model = post[index];
        return cardViewWidget(context, model);
      });
}

Widget cardViewWidget(BuildContext context, PostModel postModel) {
  return Container(
    margin: EdgeInsets.only(top: 4, bottom: 4, left: 14, right: 14),
    width: MediaQuery
        .of(context)
        .size
        .width,
    height: 100.0,
    child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Stack(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/na.jpg',
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'United States',
                    style: GoogleFonts.lato(
                        fontSize: ScreenUtil().setSp(22.0),
                        color: Colors.white60),
                  )),
            )
          ],
        )),
  );
}
