import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:now_vision/styles/text_styles.dart';
import 'package:now_vision/views/signup/sign_up.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/login_textfield.dart';
import 'package:now_vision/widgets/now_vision_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  NowVisionTextWidget(),
                  SizedBox(
                    height: 80.0,
                  ),
                  Text(
                    'Login',
                    style: TextStyles.loginSignupText,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  LoginScreenTextField(
                    text: 'Email',
                    hideText: false,
                  ),
                  LoginScreenTextField(
                    text: 'Password',
                    hideText: true,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  BlueColorFullWidthButton(text: 'Login', onPressed: () {}),
                  SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'SFProDisplay',
                        color: Color.fromRGBO(149, 151, 166, 1),
                      ),
                      children: [
                        TextSpan(text: " "),
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            fontFamily: 'SFProDisplay',
                            fontSize: 14.0,
                            color: Color.fromRGBO(37, 43, 92, 1),
                            // fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: RichText(
                      textAlign: TextAlign.center, // Center align
                      text: TextSpan(
                        text: "By creating an account, you agree to our \n",
                        style: GoogleFonts.mulish(
                          fontSize: 14.0,
                          color: Color.fromRGBO(34, 36, 15, 1),
                        ),
                        children: [
                          TextSpan(
                            text: "Terms & Conditions",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // TODO: Handle Terms & Conditions tap
                              },
                          ),
                          TextSpan(
                            text: " and agree to ",
                            style: GoogleFonts.mulish(
                              fontSize: 14.0,
                              color: Color.fromRGBO(34, 36, 15, 1),
                            ),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color.fromRGBO(27, 77, 205, 1),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // TODO: Handle Privacy Policy tap
                              },
                          ),
                          TextSpan(
                            text: ".",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
