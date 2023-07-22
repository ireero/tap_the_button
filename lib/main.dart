import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/choice_screen.dart';
import 'screens/phases/phase1_screen.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepOrange);

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      cardTheme: const CardTheme().copyWith(),
    ),
    debugShowCheckedModeBanner: false,
    home: ChoiceScreen(),
  ));
}
