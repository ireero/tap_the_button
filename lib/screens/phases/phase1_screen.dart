import 'dart:io';

import 'package:flutter/material.dart';
import 'phase1.1_screen.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  List<TextStyle> lista_cores = [
    const TextStyle(color: Colors.blue, fontSize: 48),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue),
    const TextStyle(color: Colors.blue)
  ];

  void mudaCor(int num) {
    setState(() {
      lista_cores[num] = const TextStyle(color: Colors.red);
    });
  }

  void proximaTela() {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PositionedTransitionExampleApp()));
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: proximaTela,
                  child: Text(
                    'Here!',
                    style: lista_cores[0],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(1);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[1],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(2);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[2],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(3);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[3],
                  )),
            ],
          ),
          TextButton(
              onPressed: () {
                mudaCor(4);
              },
              child: Text(
                'Here!',
                style: lista_cores[4],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    mudaCor(5);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[5],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(6);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[6],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(7);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[7],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(8);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[8],
                  )),
            ],
          ),
          TextButton(
              onPressed: () {
                mudaCor(9);
              },
              child: Text(
                'Here!',
                style: lista_cores[9],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    mudaCor(10);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[10],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(11);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[11],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(12);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[12],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(13);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[13],
                  )),
            ],
          ),
          TextButton(
              onPressed: () {
                mudaCor(14);
              },
              child: Text(
                'Here!',
                style: lista_cores[14],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    mudaCor(15);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[15],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(16);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[16],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(17);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[17],
                  )),
              TextButton(
                  onPressed: () {
                    mudaCor(18);
                  },
                  child: Text(
                    'Here!',
                    style: lista_cores[18],
                  )),
            ],
          ),
          TextButton(
              onPressed: () {
                mudaCor(19);
              },
              child: Text(
                'Here!',
                style: lista_cores[19],
              )),
        ],
      ),
    );
  }
}
