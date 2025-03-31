import 'package:flutter/material.dart';
import 'package:now_vision/views/Inspection_Screens/new_inspection2.dart';
import 'package:now_vision/widgets/appbar.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/inspection_widget.dart';
import 'package:now_vision/widgets/textfield_widget.dart';

class StartNewInspection extends StatefulWidget {
  const StartNewInspection({super.key});

  @override
  State<StartNewInspection> createState() => _StartNewInspectionState();
}

class _StartNewInspectionState extends State<StartNewInspection> {
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
                text: 'Location Input',
                image: Image.asset('assets/images/Progress_indicator1.png'),
              ),
              SizedBox(height: 40.0),
              TextFieldWidget(
                text: 'Enter Location',
                controller: TextEditingController(),
              ),
              SizedBox(height: 50.0),
              BlueColorFullWidthButton(
                  text: 'Next',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Inspection2(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}


