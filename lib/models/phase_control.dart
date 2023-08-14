import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/phases/Phase3/phase3_screen.dart';
import 'package:tap_the_button/screens/phases/Phase1/phase1_screen.dart';
import 'package:tap_the_button/screens/phases/Phase2/phase2_screen.dart';

class PhaseControl {
  List<Widget> listScreens = [
    const FirstScreen(),
    SecondScreen(),
    const ThirdScreen()
  ];
  List<int> listPhases = [];
}
