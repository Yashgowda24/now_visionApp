import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:now_vision/styles/text_styles.dart';
import 'package:now_vision/widgets/appbar.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/inspection_widget.dart';
import 'package:now_vision/widgets/red_button.dart';

class Inspection6 extends StatefulWidget {
  const Inspection6({super.key});

  @override
  State<Inspection6> createState() => _Inspection6State();
}

class _Inspection6State extends State<Inspection6> {
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
                text: 'Image Review',
                image: Image.asset('assets/images/Progress_indicator6.png'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image.asset(
                      'assets/images/image_preview.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10.0,
                    child: Text(
                      'Storage Image Preview',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 16.0,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              BlueColorFullWidthButton(text: 'Download', onPressed: () {}),
              SizedBox(
                height: 20.0,
              ),
              RedColorFullWidthButton(
                text: 'Delete',
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
