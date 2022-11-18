import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppConstant {
  static final titleStyle = GoogleFonts.robotoCondensed(
      textStyle: TextStyle(
          color: Colors.red.shade500,
          fontSize: 28,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5));
  static final barTitleStyle = GoogleFonts.robotoCondensed(
      textStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5));
  
  //static final searchDeco = BoxDecoration(color: Colors.red);
  static final containerMargin = EdgeInsets.only(top: 25.h);
  static final searchButton = ElevatedButton.styleFrom(backgroundColor: Colors.red.shade500);
}
