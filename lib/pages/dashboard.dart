import 'package:flutter/material.dart';
import 'package:flutter_badging/widgets/customAppbar.dart';

class Dashboard extends StatelessWidget {
  
  late double _dHeight, _dWidth;
  
  Dashboard({super.key});
  
  @override
  Widget build(BuildContext context) {
    // get device's height and width
    _dHeight = MediaQuery.of(context).size.height;
    _dWidth = MediaQuery.of(context).size.width;

    // test
    return Scaffold(
      appBar: CustomAppBar(),
      body: Text('Dashboard here'),
    );
  }
}
