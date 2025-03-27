import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:now_vision/views/dashboard.dart';
import 'package:now_vision/views/inspection.dart';
import 'package:now_vision/views/profile.dart';

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
      appBar: AppBar(
        title: Text(
          'Now Vision',
          style: GoogleFonts.changa(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/bell.png',
              width: 24.0,
            ),
            onPressed: () {
              print('notifi presses!');
            },
          ),
          SizedBox(
            width: 15,
          )
        ],
        centerTitle: true,
      ),
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
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: 'Inspections'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
