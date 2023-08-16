import 'package:flutter/material.dart';
import 'package:tap_the_button/models/timer_phases.dart';
import 'phase1.1_screen.dart';
import 'dart:async';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  // ignore: non_constant_identifier_names
  List<Text> lista_texts = [
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange, fontSize: 48),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    ),
    const Text(
      'Here!',
      style: TextStyle(color: Colors.deepOrange),
    )
  ];

  void mudaCor(int num) {
    setState(() {
      lista_texts[num] = const Text('No!',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20));
    });
  }

  void proximaTela() {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const PositionedTransitionExampleApp()));
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TimerPhase(
          temp_inicial: 60,
          status_inicial: false,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: proximaTela, child: lista_texts[0]),
                TextButton(
                    onPressed: () {
                      mudaCor(1);
                    },
                    child: lista_texts[1]),
                TextButton(
                    onPressed: () {
                      mudaCor(2);
                    },
                    child: lista_texts[2]),
                TextButton(
                    onPressed: () {
                      mudaCor(3);
                    },
                    child: lista_texts[3]),
              ],
            ),
            TextButton(
                onPressed: () {
                  mudaCor(4);
                },
                child: lista_texts[4]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      mudaCor(5);
                    },
                    child: lista_texts[5]),
                TextButton(
                    onPressed: () {
                      mudaCor(6);
                    },
                    child: lista_texts[6]),
                TextButton(
                    onPressed: () {
                      mudaCor(7);
                    },
                    child: lista_texts[7]),
                TextButton(
                    onPressed: () {
                      mudaCor(8);
                    },
                    child: lista_texts[8]),
              ],
            ),
            TextButton(
                onPressed: () {
                  mudaCor(9);
                },
                child: lista_texts[9]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      mudaCor(10);
                    },
                    child: lista_texts[10]),
                TextButton(
                    onPressed: () {
                      mudaCor(11);
                    },
                    child: lista_texts[11]),
                TextButton(
                    onPressed: () {
                      mudaCor(12);
                    },
                    child: lista_texts[12]),
                TextButton(
                    onPressed: () {
                      mudaCor(13);
                    },
                    child: lista_texts[13]),
              ],
            ),
            TextButton(
                onPressed: () {
                  mudaCor(14);
                },
                child: lista_texts[14]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      mudaCor(15);
                    },
                    child: lista_texts[15]),
                TextButton(
                    onPressed: () {
                      mudaCor(16);
                    },
                    child: lista_texts[16]),
                TextButton(
                    onPressed: () {
                      mudaCor(17);
                    },
                    child: lista_texts[17]),
                TextButton(
                    onPressed: () {
                      mudaCor(18);
                    },
                    child: lista_texts[18]),
              ],
            ),
            TextButton(
                onPressed: () {
                  mudaCor(19);
                },
                child: lista_texts[19]),
          ],
        ),
      ),
    );
  }
}
