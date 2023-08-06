import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/phases/phase2.1_screen.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  List<List<SwitchControl>> lista_switchs = const [
    [SwitchControl(), SwitchControl(), SwitchControl()],
    [SwitchControl(), SwitchControl(), SwitchControl()],
    [SwitchControl(), SwitchControl(), SwitchControl()]
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: lista_switchs[0]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: lista_switchs[1]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: lista_switchs[2])
        ]),
      ),
    );
  }
}

class SwitchControl extends StatefulWidget {
  const SwitchControl({super.key});

  @override
  State<SwitchControl> createState() {
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
