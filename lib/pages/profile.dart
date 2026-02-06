import 'package:flutter/material.dart';
import 'package:flutter_badging/pages/login.dart';
import 'package:flutter_badging/widgets/customBtn.dart';
import 'package:flutter_badging/widgets/missionBar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // test
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [_employeeInfo(), Divider(thickness: 3, color: Colors.black,), _pastMissionSection(), _logoutButton(context)],
            ),
          ),
        ),
      ),
    );
  }

  // employee info banner
  Widget _employeeInfo() {
    return Container(
      child: Text(
        'EMPLOYEE INFORMATION',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
      ),
    );
  }

  // profile
  Widget _profileInfo() {
    return Container();
  }

  // past missions
  Widget _pastMissions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const <Widget>[
        Card(
          clipBehavior: Clip.antiAlias,
          shadowColor: Color.fromARGB(255, 157,125,19),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: MissionBar(
            idCode: 'Qterw-C-1603',
            darknessName: '■■ 16th Road',
            entrySite: '',
            desc:
                'This darkness manifests as a street of operating shops staffed by non-human beings. Individuals entering through the Death Lane App must not close the application under any circumstances.',
            colorBrdr: Color.fromARGB(255, 157,125,19),
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shadowColor: Color.fromARGB(255, 157,125,19),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: MissionBar(
            idCode: 'Qterw-()-62',
            darknessName: 'In the Dark Shadow',
            entrySite: '',
            desc:
                'This darkness occurs if you fall asleep on New Year’s Eve after reading “In the dark shadow.txt”. You will awaken at Sekwang Technical High School at night and be chased by something that is not human until death.',
            colorBrdr: Color.fromARGB(255, 157,125,19),
          ),
        ),
        
      ],
    );
  }

  // past missions section
  Widget _pastMissionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(padding: EdgeInsetsGeometry.only(left: 30, top: 20), child: Text("PAST MISSIONS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)),  _pastMissions()]);
  }

  // logout button
  Widget _logoutButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
      child: CustomButton(
      btnColor: Color.fromARGB(255, 234, 29, 33),
      txtbtnColor: Colors.white,
      text: "LOG OUT",
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Login()));
      },
    ),
    );
  }
}

/*
    structure

    Employee Information

    Container Profile (column)
      - Logo
      - Divider
          (row)
        - Picture
        - Label
            (column)
          - Values
          - Points

    Past Missions
     - Past Mission 1
     - Past Misson 2
    
    Log Out Button
 */
