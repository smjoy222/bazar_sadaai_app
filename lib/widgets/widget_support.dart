import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidgetSupport {
  static TextStyle boldTextFeildStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  static TextStyle headlineTextFeildStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  static TextStyle lightTextFeildStyle() {
    return TextStyle(
      color: const Color.fromARGB(123, 0, 0, 0),
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  static TextStyle semiBoldTextFeildStyle() {
    return TextStyle(
      color: const Color.fromARGB(123, 0, 0, 0),
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  static TextStyle semiTextFeildStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Roboto",
    );
  }
}
