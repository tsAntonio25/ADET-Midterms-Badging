import 'package:flutter/material.dart';
import 'package:flutter_badging/widgets/missionBar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
          child: Column(
          children: [
            _welcomeBanner(),
            _pointsBanner(),
            Divider(thickness: 3, color: Colors.black,),
            _missionSection(),
          ],
        ),)
        ),
      ),
    );
  }

  // welcome banner
  Widget _welcomeBanner() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text(
            'WELCOME BACK,',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Employee ",
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "Roe Deer",
                style: TextStyle(
                  color: Color.fromARGB(255, 234,29,33),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "!",
                style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 30
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  // points container
  Widget _pointsBanner() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 15),
    padding: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 40,40,40),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, 
      children: [
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'TOTAL POINTS',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ),
        const Divider(color: Colors.white),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '277, 200 P',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}

  // all missions
  Widget _missions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const <Widget>[
        Card(
          clipBehavior: Clip.antiAlias,
          shadowColor: Color.fromARGB(255, 234,29,33),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: MissionBar(
            idCode: 'Qterw-D-718',
            darknessName: 'Don’t Look in the Mirror',
            entrySite: 'Happiness Land Apartment Security Office',
            desc:
                'This darkness commonly arises in buildings with a single elevator, particularly when the elevator is frequently out of order or displays a maintenance sign. If an individual plays rock-paper-scissors with their reflection inside the elevator and wins, the reflection will answer any question truthfully',
            colorBrdr: Color.fromARGB(255, 234,29,33),
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shadowColor: Color.fromARGB(255, 234,29,33),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: MissionBar(
            idCode: 'Qterw-C-228',
            darknessName: 'The Voices are Waiting',
            entrySite: 'Yudalsan, Mokpo',
            desc:
                'This darkness manifests when three hikers ascend Yudalsan at approximately 3:00 a.m. Affected individuals experience auditory and visual hallucinations, most commonly the voices of deceased loved ones calling from off-trail and urging them to remain on the mountain.',
            colorBrdr: Color.fromARGB(255, 234,29,33),
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shadowColor: Color.fromARGB(255, 234,29,33),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: MissionBar(
            idCode: 'Qterw-D-021',
            darknessName: 'The Crying, Left-Behind Child',
            entrySite: 'Wonderful Daycare Childcare Room',
            desc:
                'This darkness manifests as a crying ghost child who issues mundane “requests” that grow increasingly illogical over time. Requests must be fulfilled without question, and at no point should the employee acknowledge that the child is dead.',
            colorBrdr: Color.fromARGB(255, 234,29,33),
          ),
        ),
      ],
    );
  }

  // mission section
  Widget _missionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(padding: EdgeInsetsGeometry.only(left: 30, top: 20), child: Text("MISSIONS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)),  _missions()]);
  }
}
