import 'package:flutter/material.dart';
import 'package:flutter_badging/pages/dashboard.dart';
import 'package:flutter_badging/pages/profile.dart';
import 'package:flutter_badging/pages/report.dart';
import 'package:flutter_badging/widgets/customAppbar.dart';

// stateful nav
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavState();
}

// bottom nav 
class _BottomNavState extends State<BottomNavigation> {
  int _currInd = 0;

  final List<Widget> _pages = const [Dashboard(), Report(), Profile()];

  // widget
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body: _pages[_currInd],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currInd,
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: (i) {
          setState(() {
            _currInd = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Report Submission'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        
      ),
    );
  }
}
