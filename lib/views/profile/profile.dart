import 'package:flutter/material.dart';
import 'package:now_vision/styles/text_styles.dart';
import 'package:now_vision/widgets/appbar.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/red_button.dart';
import 'package:now_vision/widgets/textfield_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newpasswordController = TextEditingController();
  final TextEditingController docController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(
          text: 'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
          child: Center(
            child: Column(
              children: [
                TextFieldWidget(text: 'Name*', controller: nameController),
                SizedBox(
                  height: 16.0,
                ),
                TextFieldWidget(text: 'Email*', controller: emailController),
                SizedBox(
                  height: 16.0,
                ),
                TextFieldWidget(
                    text: 'Mobile Number*', controller: phoneNumberController),
                SizedBox(
                  height: 16.0,
                ),
                TextFieldWidget(
                  text: 'Current Password',
                  controller: passwordController,
                  hideText: true,
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFieldWidget(
                  text: 'New Password',
                  controller: newpasswordController,
                  hideText: true,
                ),
                SizedBox(
                  height: 16.0,
                ),
                TextFieldWidget(
                    text: 'Upload Document', controller: docController),
                SizedBox(
                  height: 16.0,
                ),
                BlueColorFullWidthButton(
                    text: 'Save Changes', onPressed: () {}),
                SizedBox(
                  height: 20.0,
                ),
                RedColorFullWidthButton(
                  text: 'Logout',
                  onPressed: () {},
                  icon: Image.asset('assets/images/Logout.png'),
                  textStyle: TextStyles.redButtonTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
