import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:now_vision/widgets/appbar.dart';

class InspectionInfoPage extends StatelessWidget {
  const InspectionInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(text: 'Location: Room 04'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detailed Info',
                style: GoogleFonts.inter(
                  fontSize: 18.0,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 18.0,
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
                      'Location: Room 04',
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
                height: 15.0,
              ),
              ConstructionActivitiesWidget(
                heading: "Construction Activities",
                bulletPoints: [
                  "Interior drywall partitioning using a metal stud framing system.",
                  "Electrical wiring installation is in progress.",
                ],
              ),
              Divider(),
              ConstructionActivitiesWidget(
                heading: "Progress %",
                bulletPoints: [
                  "Approximately 40-50% complete (metal framework installed, some wiring in place, but drywall panels are yet to be installed.)",
                ],
              ),
              Divider(),
              ConstructionActivitiesWidget(
                heading: "Next Activities",
                numberedPoints: const {
                  1: "Complete electrical and plumig work inside the frame.",
                  2: "Install drywall (gypsum boards) on both sides.",
                  3: "Apply joint compound, sanding, and painting for finishing."
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConstructionActivitiesWidget extends StatelessWidget {
  final String heading;
  final List<String>? bulletPoints; // Optional bullet points
  final Map<int, String>? numberedPoints; // Optional numbered points

  ConstructionActivitiesWidget({
    required this.heading,
    this.bulletPoints,
    this.numberedPoints,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontSize: 18.0,
            color: Color.fromRGBO(40, 56, 145, 1),
          ),
        ),
        SizedBox(height: 8.0),

        // Show bullet points if available
        if (bulletPoints != null && bulletPoints!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: bulletPoints!.map((point) {
              return Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("• ", style: TextStyle(fontSize: 14.0)),
                    Expanded(
                      child: Text(
                        point,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),

        // Show numbered points if available
        if (numberedPoints != null && numberedPoints!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: numberedPoints!.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${entry.key}. ",
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        entry.value,
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
      ],
    );
  }
}
