import 'package:flutter/material.dart';
import 'package:tap_the_button/models/phase.dart';
import 'package:tap_the_button/screens/phases/phase1_screen.dart';
import 'package:tap_the_button/screens/phases/phase2_screen.dart';

class PhaseControl {
  List<Widget> list_screens = [FirstScreen(), const SecondScreen()];
  List<Phase> list_phases = [];
}
