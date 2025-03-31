import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:now_vision/views/dashboard/dashboard.dart';
import 'package:now_vision/views/Inspection_Screens/inspection.dart';
import 'package:now_vision/views/profile/profile.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int selectedIndex = 0;
  List pages = [DashBoardScreen(), InspectionScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 29, 129, 0.08),
              spreadRadius: 2,
              blurRadius: 20,
              offset: Offset(0, -12),
            )
          ],
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 11.0,
            color: Color.fromRGBO(40, 56, 145, 1),
          ),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 11.0,
            color: Color.fromRGBO(149, 151, 166, 1),
          ),
          onTap: (int index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
          currentIndex: selectedIndex,
          items: [
            _buildNavItem(Icons.dashboard, 'Dashboard', 0),
            _buildNavItem(Icons.list, 'Inspections', 1),
            _buildNavItem(Icons.person_rounded, 'Profile', 2),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.dashboard,
            //     ),
            //     label: 'Dashboard'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.list), label: 'Inspections'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.person_rounded), label: 'Profile'),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          if (selectedIndex == index) // Show blue line if selected
            Container(
              height: 3,
              width: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(40, 56, 145, 1),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          SizedBox(height: 10), // Spacing
          Icon(
            icon,
            color: selectedIndex == index
                ? Color.fromRGBO(40, 56, 145, 1)
                : Color.fromRGBO(149, 151, 166, 1),
          ),
        ],
      ),
      label: label,
    );
  }
}
