import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  // parameters
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final Color labelColor;
  final Color borderColor;
  final Icon iconlabel;

  // constructor
  CustomInputText({
    super.key,
    required this.label,
    required this.controller,
    required this.labelColor,
    required this.borderColor,
    required this.iconlabel,
    required this.obscureText,
  });

  // custom input text widget
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // things
      controller: controller,
      obscureText: obscureText,

      // label
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: labelColor, fontSize: 13),
        prefixIcon: iconlabel,

       // fill color
        filled: true,           
        fillColor: Colors.white,  

        // border
        enabledBorder: buildBorder(borderColor),
      ),
    );
  }

  // function
  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 2),
    );
  }
}
