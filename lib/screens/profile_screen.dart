import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Profile',
          style: GoogleFonts.lato(fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            'In progress...',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
