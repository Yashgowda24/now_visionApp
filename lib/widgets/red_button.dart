import 'package:flutter/material.dart';

class RedColorFullWidthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Widget? icon;
  final TextStyle textStyle;

  RedColorFullWidthButton(
      {required this.text,
      required this.onPressed,
      this.icon,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 61),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.0,
            color: Color.fromRGBO(251, 23, 23, 1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centers content
        mainAxisSize: MainAxisSize.min, // Shrinks to fit content
        children: [
          if (icon != null) ...[
            icon!,
            SizedBox(width: 8), // Space between icon and text
          ],
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class RedColorFullWidthButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;

//   RedColorFullWidthButton({required this.text, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//         minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 61),
//         shape: RoundedRectangleBorder(
//           side: BorderSide(
//             width: 2.0,
//             color: Color.fromRGBO(40, 58, 145, 1),
//           ),
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontFamily: 'Gilroy',
//           fontSize: 18.0,
//         ),
//       ),
//     );
//   }
// }
