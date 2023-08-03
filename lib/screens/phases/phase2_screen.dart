import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SwitchControl(),
                SwitchControl(),
                SwitchControl()
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SwitchControl(),
                SwitchControl(),
                SwitchControl()
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SwitchControl(),
                SwitchControl(),
                SwitchControl()
              ])
        ]),
      ),
    );
  }
}

class SwitchControl extends StatefulWidget {
  const SwitchControl({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchControlState();
  }
}

class _SwitchControlState extends State<SwitchControl> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: light,
        activeColor: Colors.amber,
        thumbColor: const MaterialStatePropertyAll<Color>(
            Color.fromARGB(255, 255, 255, 100)),
        onChanged: (bool value) {
          setState(() {
            light = value;
          });
        });
  }
}
