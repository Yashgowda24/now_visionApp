import 'package:flutter/material.dart';
import 'package:now_vision/styles/text_styles.dart';
import 'package:now_vision/views/Inspection_Screens/new_inspection5.dart';
import 'package:now_vision/widgets/appbar.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/inspection_widget.dart';
import 'package:now_vision/widgets/red_button.dart';

class Inspection4 extends StatefulWidget {
  const Inspection4({super.key});

  @override
  State<Inspection4> createState() => _Inspection4State();
}

class _Inspection4State extends State<Inspection4> {
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
                text: 'AI Analysis',
                image: Image.asset('assets/images/Progress_indicator4.png'),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    AiTextWidget(
                      text: 'Construction Elements Detected',
                      image: Image.asset('assets/images/image123.png'),
                    ),
                    AiTextWidget(
                      text: 'Progress: 50%',
                      image: Image.asset('assets/images/image123.png'),
                    ),
                    AiTextWidget(
                      text:
                          'Construction Activities: \nInterior drywall partitioning using a metal stud framing system. Electrical wiring installation is also in progress.',
                      image: Image.asset('assets/images/image123.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.0),
              BlueColorFullWidthButton(
                text: 'Accept',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Inspection5(),
                    ),
                  );
                },
              ),
              SizedBox(height: 12.0),
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
                  'Edit',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 18.0,
                    color: Color.fromRGBO(40, 56, 145, 1),
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              RedColorFullWidthButton(
                text: 'Reject',
                onPressed: () {},
                textStyle: TextStyles.redButtonTextStyle,
              ),
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
