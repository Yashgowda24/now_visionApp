import 'package:flutter/material.dart';
import 'package:now_vision/styles/text_styles.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  AppBarWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(72, 76, 82, 0.16), // Shadow color
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 2), // Moves shadow downward
          ),
        ],
      ),
      child: AppBar(
        title: Text(
          text,
          style: TextStyles.appBarTitle,
        ),
      ),
    );
  }
}
