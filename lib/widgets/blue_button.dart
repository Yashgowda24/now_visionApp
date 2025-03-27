import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlueColorFullWidthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  BlueColorFullWidthButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(40, 56, 145, 1),
        minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 61),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.raleway(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}
