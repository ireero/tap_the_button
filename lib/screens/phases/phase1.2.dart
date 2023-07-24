import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/phases/end_phase/end_phase_01.dart';
import '../../models/line_buttons.dart';

class FirstOneOfOne extends StatefulWidget {
  const FirstOneOfOne({super.key});

  @override
  State<FirstOneOfOne> createState() {
    return _FirstOneOfOneState();
  }
}

class _FirstOneOfOneState extends State<FirstOneOfOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: LineButton(
        qtdButtons: 5,
      )),
    );
  }
}
