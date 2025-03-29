import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NowVisionTextWidget extends StatelessWidget {
  const NowVisionTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Center(
        child: Column(
          children: [
            Text(
              'Now Vision',
              style: GoogleFonts.changa(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'AI Analysed Platform',
              style: GoogleFonts.inter(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}