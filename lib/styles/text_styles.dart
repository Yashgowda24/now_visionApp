import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final TextStyle nowVisionAppBarTitle = GoogleFonts.changa(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle selectedLabel = GoogleFonts.inter(
    fontSize: 11.0,
    color: Color.fromRGBO(40, 56, 145, 1),
  );

  static final TextStyle unselectedLabel = GoogleFonts.inter(
    fontSize: 11.0,
    color: Color.fromRGBO(149, 151, 166, 1),
  );

  static const TextStyle appBarTitle = TextStyle(
    fontFamily: 'Gilroy',
    fontSize: 18.0,
  );

  static const TextStyle redButtonTextStyle = TextStyle(
    fontFamily: 'Gilroy',
    fontSize: 18.0,
    color: Color.fromRGBO(251, 23, 23, 1),
  );

  static const TextStyle loginSignupText = TextStyle(
    fontFamily: 'SFProDisplay',
    fontSize: 24.0,
  );

  static final TextStyle loginScreenNameField = GoogleFonts.inter(
    fontSize: 16.0,
    color: Color.fromRGBO(149, 151, 166, 1),
  );

  static const TextStyle infoCardStyle = TextStyle(
    fontFamily: 'Gilroy',
    fontSize: 16.0,
    color: Color.fromRGBO(22, 22, 22, 1),
  );

  // Add more styles as needed...
}
