import 'package:flutter/material.dart';
import 'dart:async';

// ignore: must_be_immutable
class ButtonTimer extends StatefulWidget {
  ButtonTimer({required this.activateScreen, super.key});

  Widget activateScreen;

  @override
  State<StatefulWidget> createState() {
    return _ButtonTimerState();
  }
}

class _ButtonTimerState extends State<ButtonTimer> {
  // variables
  int timeLeft = 4;
  bool initiatCount = false;

  void _startCountDonw() {
    if (initiatCount == false) {
      Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          initiatCount = true;
          timeLeft--;
          if (timeLeft <= 0) {
            if (timeLeft <= -1) {
              timer.cancel();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => widget.activateScreen,
                  ));
            }
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(241, 91, 3, 1),
          Color.fromRGBO(236, 56, 2, 1),
        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
      ),
      child: TextButton(
        onPressed: () {
          _startCountDonw();
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: initiatCount == false
              ? const Icon(
                  Icons.access_alarms,
                  color: Colors.white,
                  size: 80,
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.5),
                  child: Text(
                    timeLeft <= 0 ? 'GO!' : timeLeft.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 68,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
