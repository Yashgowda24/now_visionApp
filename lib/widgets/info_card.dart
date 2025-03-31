import 'package:flutter/material.dart';
import 'package:now_vision/styles/text_styles.dart';
import 'package:now_vision/views/Inspection_Screens/inspec_info.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InspectionInfoPage(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              _buildInfoRow(Image.asset('assets/images/location.png'),
                  "Location:", "Room 04"),
              _buildDivider(),
              _buildInfoRow(Image.asset('assets/images/task-square.png'),
                  "Construction Activities:", "Drywall..."),
              _buildDivider(),
              _buildProgressRow(),
              _buildDivider(),
              _buildInfoRow(Image.asset('assets/images/task-square.png'),
                  "Next Activities:", "Electrical..."),
            ],
          ),
        ),
      ),
    );
  }
  // percentage-square.png

  Widget _buildInfoRow(Widget icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 8),
              Text(label, style: TextStyles.infoCardStyle),
            ],
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.infoCardStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          Image.asset('assets/images/percentage-square.png'),
          SizedBox(width: 8),
          Text("Progress:", style: TextStyles.infoCardStyle),
          SizedBox(width: 30),
          Expanded(
            child: LinearProgressIndicator(
              value: 0.4,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
            ),
          ),
          SizedBox(width: 8),
          Text("40% Completed", style: TextStyles.infoCardStyle),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(height: 1, color: Colors.grey[300]);
  }
}
