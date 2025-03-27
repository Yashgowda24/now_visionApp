import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController eidController = TextEditingController();

  File? _imageFile;

  @override
  void dispose() {
    // TODO: implement dispose
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    titleController.dispose();
    eidController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
      Fluttertoast.showToast(
        msg: 'Profile photo updated!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
      );
    } else {
      Fluttertoast.showToast(
        msg: 'No image selected!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
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
                  Text(
                    'Sign up',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay',
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: _imageFile != null
                            ? FileImage(_imageFile!) as ImageProvider
                            : AssetImage('assets/images/User-120.png'),
                        radius: 60.0,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: _pickImage,
                          child: Image.asset('assets/images/ButtonIcon.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldWidget(
                    text: 'First Name*',
                    controller: firstNameController,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFieldWidget(
                    text: 'Last Name*',
                    controller: lastNameController,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFieldWidget(
                    text: 'Email*',
                    controller: emailController,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFieldWidget(
                    text: 'Phone Number*',
                    controller: phoneNumberController,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFieldWidget(
                    text: 'Title',
                    controller: titleController,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFieldWidget(
                    text: 'EID',
                    controller: eidController,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Signup-Button pressed!',
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 16.0,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(40, 56, 145, 1),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.9, 61),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.raleway(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
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
