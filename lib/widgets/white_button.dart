import 'package:flutter/material.dart';

class WhiteColorFullWidthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  WhiteColorFullWidthButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 61),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.0,
            color: Color.fromRGBO(40, 58, 145, 1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(text,
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontSize: 18.0,
          )),
    );
  }
}
