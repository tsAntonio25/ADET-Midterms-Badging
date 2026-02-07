import 'package:flutter/material.dart';
import 'package:flutter_badging/widgets/customAppbar.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  // build
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Text('Feedback here.')));
  }
}
