import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;

  TextFieldWidget({required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 10, top: 5),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.blueGrey,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: GoogleFonts.outfit(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 0,
            ),
            TextField(
              controller: controller,
              style: GoogleFonts.outfit(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
