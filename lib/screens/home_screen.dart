import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_design/screens/plane_ticket_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeScreen> {

  /*final _tabNavigator = GlobalKey<TabNavigatorState>();
  final _tab1 = GlobalKey<NavigatorState>();
  final _tab2 = GlobalKey<NavigatorState>();
  final _tab3 = GlobalKey<NavigatorState>();
  final _tab4 = GlobalKey<NavigatorState>();

  var _tabSelectedIndex = 0;
  var _tabPopStack = false;

  void _setIndex(index) {
    setState(() {
      _tabPopStack = _tabSelectedIndex == index;
      _tabSelectedIndex = index;
    });
  }*/


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Home',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 18.0),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),

      body: Stack(
        children: [
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Container(
              child: Center(
                child: Text('You will travel by ?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              color: Colors.blueAccent,
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.40,
            top: MediaQuery.of(context).size.height * 0.20,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PlaneTicket()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: MediaQuery.of(context).size.height *
                                  0.40 /
                                  2 -
                                  10,
                              width: MediaQuery.of(context).size.width / 2 - 25,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/plane.png",
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      "Plane",
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 10, left: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height:
                            MediaQuery.of(context).size.height * 0.40 / 2 -
                                10,
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/train.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    "Train",
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: MediaQuery.of(context).size.width,
                        height:
                        MediaQuery.of(context).size.height * 0.40 / 2 - 20,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/car.png",
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                "Car",
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                color: Colors.transparent,
              ),
            ),
          )
        ],
      ),

    );
  }
}


/*
body: Stack(
        children: [
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Container(
              child: Center(
                child: Text('You will travel by ?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              color: Colors.blueAccent,
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.40,
            top: MediaQuery.of(context).size.height * 0.20,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PlaneTicket()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: MediaQuery.of(context).size.height *
                                      0.40 /
                                      2 -
                                  10,
                              width: MediaQuery.of(context).size.width / 2 - 25,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/plane.png",
                                      width: 50,
                                      height: 50,
                                    ),
                                    Text(
                                      "Plane",
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 10, left: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            height:
                                MediaQuery.of(context).size.height * 0.40 / 2 -
                                    10,
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/train.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    "Train",
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: MediaQuery.of(context).size.width,
                        height:
                            MediaQuery.of(context).size.height * 0.40 / 2 - 20,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/car.png",
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                "Car",
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                color: Colors.transparent,
              ),
            ),
          )
        ],
      ),
 */
