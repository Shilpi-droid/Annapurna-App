import 'package:annapurna/ui/DonatePage.dart';
import 'package:annapurna/ui/HomePage.dart';
import 'package:annapurna/ui/OnboardingScreen.dart';
import 'package:annapurna/ui/rough.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Annapurna',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}