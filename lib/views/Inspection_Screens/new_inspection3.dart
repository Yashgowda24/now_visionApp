import 'package:flutter/material.dart';
import 'package:now_vision/styles/text_styles.dart';
import 'package:now_vision/views/Inspection_Screens/new_inspection4.dart';
import 'package:now_vision/widgets/appbar.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/inspection_widget.dart';
import 'package:now_vision/widgets/red_button.dart';

class Inspection3 extends StatefulWidget {
  const Inspection3({super.key});

  @override
  State<Inspection3> createState() => _Inspection3State();
}

class _Inspection3State extends State<Inspection3> {
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
                text: 'Analysing Image',
                image: Image.asset('assets/images/Progress_indicator3.png'),
              ),
              SizedBox(height: 40.0),
              Image.asset('assets/images/Spinner-Gradient-7.png'),
              SizedBox(height: 28.0),
              Text(
                'AI analysing image... Please wait',
                style: TextStyles.infoCardStyle,
              ),
              SizedBox(height: 60.0),
              RedColorFullWidthButton(
                  text: 'Cancel',
                  onPressed: () {},
                  textStyle: TextStyles.redButtonTextStyle),
              SizedBox(height: 12.0),
              BlueColorFullWidthButton(
                text: 'Next',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Inspection4(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
