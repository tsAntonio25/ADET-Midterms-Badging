import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  
  // parameters
  Color btnColor;
  Color txtbtnColor;
  String text;
  VoidCallback onPressed;

  // constructor
  CustomButton({
    required this.btnColor,
    required this.txtbtnColor,
    required this.text,
    required this.onPressed,
  });

  // button widget
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 16)),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: txtbtnColor, fontFamily: 'Varela')),
    );
  }
}
