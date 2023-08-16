import 'package:flutter/material.dart';
import 'dart:async';

class TimerPhase extends StatefulWidget {
  TimerPhase(
      {required this.temp_inicial, required this.status_inicial, super.key});

  int temp_inicial;
  bool status_inicial;

  @override
  State<TimerPhase> createState() {
    // TODO: implement createState
    return _TimerPhaseState(time: temp_inicial, status: status_inicial);
  }
}

class _TimerPhaseState extends State<TimerPhase> {
  _TimerPhaseState({required this.time, required this.status});

  int time;
  bool status;

  void _startCountDonw() {
    if (status == false) {
      Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          time--;
          if (time <= 0) {
            status = true;
            if (time <= -1) {
              timer.cancel();
              print('Acabou o tempo');
            }
          }
        });
      });
    }
  }

  @override
  void initState() {
    _startCountDonw();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(time.toString()));
  }
}
