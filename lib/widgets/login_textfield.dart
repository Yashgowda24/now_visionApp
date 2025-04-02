import 'package:flutter/material.dart';
import 'package:now_vision/styles/text_styles.dart';

class LoginScreenTextField extends StatelessWidget {
  final String text;
  final bool hideText;

  LoginScreenTextField({required this.text, required this.hideText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          obscureText: hideText,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyles.loginScreenNameField,
            filled: true,
            fillColor: Color.fromRGBO(245, 244, 248, 1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none, // No border
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 17, horizontal: 17),
          ),
        ),
      ),
    );
  }
}
