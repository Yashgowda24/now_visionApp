import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InspectionWidget extends StatelessWidget {
  final String text;
  Image image;

  InspectionWidget({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        image,
      ],
    );
  }
}