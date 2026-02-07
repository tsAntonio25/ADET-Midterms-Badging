import 'package:flutter/material.dart';
import 'package:flutter_badging/widgets/customAppbar.dart';
import 'package:flutter_badging/widgets/customBtn.dart';
import 'package:flutter_badging/pages/bottomnav.dart';



class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  // build
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 120),
              _logo(),
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Report has been submitted',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Points will be added after reviewing the report.',
                      style: TextStyle(fontSize: 14, color: Color.fromARGB(161, 161, 161, 161)),
                    ),
                  ]
                ),
              ),
              SizedBox(height: 60),
              CustomButton(
                btnColor: Color.fromARGB(255, 108, 108, 108),
                txtbtnColor: Colors.white,
                text: 'BACK',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation()));
                },
              ),
            ]
          )
        )
      )
    );
  }
}

Widget _logo() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Baekilmong_Logo.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

/*
    structure

    Logo

    - Report has been submitted (Text)
    - Points will be added after reviewing the report. (Text)
    - Back (Button)
 */