import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabItem {
  final GlobalKey<NavigatorState> key;
  final Widget tab;

  const TabItem(this.key, this.tab);
}