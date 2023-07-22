import 'package:flutter/material.dart';

class ButtonTimer extends StatefulWidget {
  ButtonTimer({required this.activateScreen, super.key});

  Widget activateScreen;

  @override
  State<StatefulWidget> createState() {
    return _ButtonTimerState();
  }
}

class _ButtonTimerState extends State<ButtonTimer> {
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
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget.activateScreen,
              ));
        },
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Icon(
            Icons.access_alarms,
            color: Colors.white,
            size: 80,
          ),
        ),
      ),
    );
  }
}
