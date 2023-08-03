import 'package:flutter/material.dart';
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
