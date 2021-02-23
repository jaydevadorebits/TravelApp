import 'package:flutter/material.dart';
import 'package:travel_app_design/helper/tab_item.dart';
import 'package:travel_app_design/helper/tab_navigator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_design/screens/edit_profile_screen.dart';
import 'package:travel_app_design/screens/home_screen.dart';
import 'package:travel_app_design/screens/profile_screen.dart';
import 'package:travel_app_design/screens/tour_screen.dart';

import 'explore_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  String _title;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  final _tabNavigator = GlobalKey<TabNavigatorState>();
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
      switch (_tabSelectedIndex) {
        case 0:
          {
            _title = "Home";
          }
          break;
        case 1:
          {
            _title = "Tours";
          }
          break;
        case 2:
          {
            _title = "Explore";
          }
          break;
        case 3:
          {
            _title = "Profile";
          }
          break;
      }
    });
  }

  @override
  void initState() {
    _title = "Home";
    _children = [HomeScreen(), TourScreen(), Explore(), EditProfileScreen()];
    super.initState();
  }

  List<Widget> _children;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await _tabNavigator.currentState.maybePop(),
      child: Scaffold(
        key: _scaffoldKey,
        /*appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            _title,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 16.0),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),*/
        body: _children[_tabSelectedIndex]
        /*TabNavigator(
          key: _tabNavigator,
          tabs: <TabItem>[
            TabItem(_tab1, HomeScreen()),
            TabItem(_tab2, TourScreen()),
            TabItem(_tab3, Explore()),
            TabItem(_tab4, EditProfileScreen()),
          ],
          selectedIndex: _tabSelectedIndex,
          popStack: _tabPopStack,
        )*/
        ,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 5.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              title: Text('Tours'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
          currentIndex: _tabSelectedIndex,
          onTap: _setIndex,
          selectedItemColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
