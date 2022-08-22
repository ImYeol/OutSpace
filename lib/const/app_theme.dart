import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor:  Colors.white,
      backgroundColor: Colors.white,
      // 밝기는 어둡게
      brightness: Brightness.dark,
      // Color의 색상의 배열값? 색의 농도를 의미하며 100부터 900까지 100단위로 설정 가능
      // 사용자와 상호작용하는 앨리먼트들의 기본 색상
      primaryColor: Colors.lightBlue[800],
      // 사용할 폰트
      fontFamily: 'Lato',
      // 텍스트 테마 설정
      // https://api.flutter.dev/flutter/material/TextTheme-class.html
      // https://material.io/design/typography/the-type-system.html#applying-the-type-scale
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.lato(
          color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
        headlineMedium: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        headlineSmall: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        titleLarge: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        titleMedium: GoogleFonts.lato(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
        titleSmall: GoogleFonts.lato(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
        bodyLarge: GoogleFonts.lato(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
        bodyMedium: GoogleFonts.lato(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
        bodySmall: GoogleFonts.lato(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
        subtitle1: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        subtitle2: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        labelLarge: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        labelMedium: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        labelSmall: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        button: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        caption: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
        overline: GoogleFonts.lato(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.normal),
      ), 
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.cyan[600]),
  );

  static final darkTheme = ThemeData(
    
  );
  
}