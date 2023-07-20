import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/choice_screen.dart';
import 'screens/phases/phase1_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: ChoiceScreen(),
  ));
}
