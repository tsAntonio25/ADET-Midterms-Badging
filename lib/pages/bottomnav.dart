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
      // Wrap the BottomNavigationBar in a Container for the Shadow
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26, 
              spreadRadius: 0, 
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: BottomNavigationBar(
            currentIndex: _currInd,
            selectedItemColor: Color.fromARGB(255, 230,198,109) ,
            backgroundColor: Color.fromARGB(255, 40,40,40), 
            unselectedItemColor: Color.fromARGB(255, 217,217,217),
            type: BottomNavigationBarType.fixed, 
            onTap: (i) {
              setState(() {
                _currInd = i;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Report'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
