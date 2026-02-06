import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  
  const Dashboard({super.key});
  
  @override
  Widget build(BuildContext context) {
    // get device's height and width
    final _dHeight = MediaQuery.of(context).size.height;
    final _dWidth = MediaQuery.of(context).size.width;

    // test
    return Scaffold(
      body: Text('Dashboard here'),
    );
  }
}
