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
              children: [
                _employeeInfo(),
                _profileInfo(),
                Divider(thickness: 3, color: Colors.black),
                _pastMissionSection(),
                _logoutButton(context),
              ],
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
    return Container(
      margin: EdgeInsets.only(bottom: 30, top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 40, 40, 40),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(alignment: Alignment.centerRight, child: _logo()),
          Divider(color: Colors.white),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_pfp(), _labels(), _values()],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Points: 277,200',
              style: TextStyle(
                color: Color.fromARGB(255, 234, 29, 33),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // daydream logo
  Widget _logo() {
    return Container(
      height: 40,
      width: 40,

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Baekilmong_Logo.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  // profile pic
  Widget _pfp() {
    return Container(
      height: 130,
      width: 100,

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/soleum1.jpg'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  // labels
  Widget _labels() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name:', style: TextStyle(color: Colors.white, fontSize: 15)),
          Text('Team:', style: TextStyle(color: Colors.white, fontSize: 15)),
          Text(
            'Codename:',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text(
            'Position:',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }

  // values
  Widget _values() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kim Soleum',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text('D', style: TextStyle(color: Colors.white, fontSize: 15)),
          Text('Roe Deer', style: TextStyle(color: Colors.white, fontSize: 15)),
          Text(
            'Supervisor',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }

  // past missions
  Widget _pastMissions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const <Widget>[
        Card(
          clipBehavior: Clip.antiAlias,
          shadowColor: Color.fromARGB(255, 157, 125, 19),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: MissionBar(
            idCode: 'Qterw-C-1603',
            darknessName: '■■ 16th Road',
            entrySite: '',
            desc:
                'This darkness manifests as a street of operating shops staffed by non-human beings. Individuals entering through the Death Lane App must not close the application under any circumstances.',
            colorBrdr: Color.fromARGB(255, 157, 125, 19),
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shadowColor: Color.fromARGB(255, 157, 125, 19),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: MissionBar(
            idCode: 'Qterw-()-62',
            darknessName: 'In the Dark Shadow',
            entrySite: '',
            desc:
                'This darkness occurs if you fall asleep on New Year’s Eve after reading “In the dark shadow.txt”. You will awaken at Sekwang Technical High School at night and be chased by something that is not human until death.',
            colorBrdr: Color.fromARGB(255, 157, 125, 19),
          ),
        ),
      ],
    );
  }

  // past missions section
  Widget _pastMissionSection() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(left: 30, top: 20),
          child: Text(
            "PAST MISSIONS",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ),
        _pastMissions(),
      ],
    ),
    );
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
