import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:now_vision/widgets/appbar.dart';
import 'package:now_vision/widgets/info_card.dart';

class InspectionScreen extends StatefulWidget {
  const InspectionScreen({super.key});

  @override
  State<InspectionScreen> createState() => _InspectionScreenState();
}

class _InspectionScreenState extends State<InspectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(
          text: 'Inspections',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(51, 51, 51, 0.16),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      )
                    ],
                    border: Border.all(
                      color: Color.fromRGBO(198, 198, 198, 1),
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color.fromRGBO(255, 255, 255, 1), // Background color
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(124, 124, 124, 1),
                      ),
                      border: InputBorder.none,
                      prefixIcon: Image.asset('assets/images/Vector.png'),
                    ),
                  ),
                ),
              ),
              InfoCard(),
              InfoCard(),
              InfoCard(),
              // Container(
              //   child: Column(
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         children: [
              //           Icon(Icons.location_on_outlined),
              //           Text('Location'),
              //           Text('Room 4'),
              //         ],
              //       ),
              //       Row(
              //         children: [
              //           Icon(Icons.location_on_outlined),
              //           Text('Location'),
              //           Text('Room 4'),
              //         ],
              //       ),
              //       Row(
              //         children: [
              //           Icon(Icons.location_on_outlined),
              //           Text('Location'),
              //           Text('Room 4'),
              //         ],
              //       ),
              //       Row(
              //         children: [
              //           Icon(Icons.location_on_outlined),
              //           Text('Location'),
              //           Text('Room 4'),
              //         ],
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
