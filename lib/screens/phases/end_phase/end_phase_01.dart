import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/choice_screen.dart';

class EndPhaseOne extends StatelessWidget {
  const EndPhaseOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => ChoiceScreen(),
                  ),
                  (route) => route.isFirst);
            },
            child: const Text('End')),
      ),
    );
  }
}
