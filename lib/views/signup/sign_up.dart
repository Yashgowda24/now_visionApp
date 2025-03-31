import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:now_vision/styles/text_styles.dart';
import 'package:now_vision/views/main%20menu/main_menu.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/now_vision_title.dart';
import 'package:now_vision/widgets/textfield_widget.dart';

class SignUpPage extends StatefulWidget {

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
                  NowVisionTextWidget(),
                  Text(
                    'Sign up',
                    style: TextStyles.loginSignupText,
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
                  BlueColorFullWidthButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainMenu(),
                        ),
                      );
                    },
                    text: 'Sign up',
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
