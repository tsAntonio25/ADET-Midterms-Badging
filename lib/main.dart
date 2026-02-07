import 'package:flutter/material.dart';
import 'package:flutter_badging/pages/bottomnav.dart';
import 'package:flutter_badging/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ADET Midterms Badging',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 25, 25, 25)),
        fontFamily: 'Alef'
      ),
      home: BottomNavigation(), // pang testing
    );
  }
}
