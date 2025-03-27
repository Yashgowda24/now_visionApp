import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:now_vision/widgets/blue_button.dart';
import 'package:now_vision/widgets/white_button.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final List<Map<String, String>> inspections = [
    {"location": "Room 4", "date": "2025-03-01", "progress": "40%"},
    {"location": "Room 4", "date": "2025-03-01", "progress": "40%"},
    {"location": "Room 4", "date": "2025-03-01", "progress": "40%"},
    {"location": "Room 4", "date": "2025-03-01", "progress": "40%"},
    {"location": "Room 4", "date": "2025-03-01", "progress": "40%"},
    {"location": "Room 4", "date": "2025-03-01", "progress": "40%"},
    {"location": "Room 4", "date": "2025-03-01", "progress": "40%"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome, Justin!',
                    style: GoogleFonts.inter(
                      fontSize: 20.0,
                      color: Color.fromRGBO(44, 61, 122, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  BlueColorFullWidthButton(
                    text: 'Start New Inspection',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  WhiteColorFullWidthButton(
                    text: 'View All Records',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'Past Inspection',
                    style: GoogleFonts.inter(
                      fontSize: 18.0,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      child: DataTableTheme(
                        data: DataTableThemeData(
                          headingRowColor: MaterialStateColor.resolveWith(
                            (states) => Color.fromRGBO(226, 230, 235, 1),
                          ),
                          dataRowColor: MaterialStateColor.resolveWith(
                            (states) => Color.fromRGBO(249, 249, 249, 1),
                          ),
                          dataTextStyle: GoogleFonts.poppins(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(37, 56, 88, 1),
                          ),
                          headingTextStyle: GoogleFonts.poppins(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(37, 56, 88, 1),
                          ),
                        ),
                        child: DataTable(
                          columns: [
                            DataColumn(
                              label: Text('Location'),
                            ),
                            DataColumn(
                              label: Text('Date'),
                            ),
                            DataColumn(
                              label: Text('Progress'),
                            ),
                          ],
                          rows: inspections.map((item) {
                            return DataRow(cells: [
                              DataCell(Text(item["location"]!)),
                              DataCell(Text(item["date"]!)),
                              DataCell(Text(item["progress"]!)),
                            ]);
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
