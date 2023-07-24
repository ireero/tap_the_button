import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/phases/phase1_screen.dart';
import 'package:tap_the_button/screens/phases/phase2_screen.dart';
import 'phase_control.dart';

class Phase {
  int? number;
  bool? end;
  Widget? phaseScreen;

  void createClassPhases() {
    for (int i = 0; i < PhaseControl().list_screens.length; i++) {
      PhaseControl().list_phases.add(Phase());
    }
  }
}
