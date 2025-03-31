import 'package:flutter/material.dart';
import 'package:now_vision/styles/text_styles.dart';
import 'package:now_vision/views/Inspection_Screens/new_inspection6.dart';
import 'package:now_vision/widgets/appbar.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/inspection_widget.dart';
import 'package:now_vision/widgets/textfield_widget.dart';

class Inspection5 extends StatefulWidget {
  const Inspection5({super.key});

  @override
  State<Inspection5> createState() => _Inspection5State();
}

class _Inspection5State extends State<Inspection5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(
          text: 'Start New Inspection',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              InspectionWidget(
                text: 'Inspection Records',
                image: Image.asset('assets/images/Progress_indicator5.png'),
              ),
              SizedBox(height: 40.0),
              TextFieldWidget(
                text: 'Location',
                controller: TextEditingController(),
              ),
              SizedBox(height: 16.0),
              TextFieldWidget(
                text: 'Progress',
                controller: TextEditingController(),
              ),
              SizedBox(height: 16.0),
              TextFieldWidget(
                text: 'Activities',
                controller: TextEditingController(),
              ),
              SizedBox(height: 16.0),
              TextFieldWidget(
                text: 'Next Activities',
                controller: TextEditingController(),
              ),
              SizedBox(height: 42.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.9, 61),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2.0,
                      color: Color.fromRGBO(40, 56, 145, 1),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'New Inspection',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 18.0,
                    color: Color.fromRGBO(40, 56, 145, 1),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              BlueColorFullWidthButton(
                text: 'Next',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Inspection6(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AiTextWidget extends StatelessWidget {
  final String text;
  final Image image;

  AiTextWidget({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        image,
        SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyles.appBarTitle,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
