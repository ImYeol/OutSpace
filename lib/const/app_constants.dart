import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstants {
  static const Color selectedItemColor = Colors.black;
  static const Color nonSelectedItemColor = Colors.grey;

  // view config
  static const double defaultHorizontalPaddingSize = 20.0;
  static const double defaultVerticalPaddingSize = 20.0;

  static final TextStyle defaultMainTitleStyle = GoogleFonts.lato(
      color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold);
  static final TextStyle defaultSubTitleStyle = GoogleFonts.lato(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal);
}
