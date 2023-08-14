import 'package:flutter/material.dart';
import 'package:tap_the_button/models/check_box_list.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ThirdScreenState();
  }
}

class _ThirdScreenState extends State<ThirdScreen> {
  List<List<bool>> lista_de_listas_checks = [
    [true, true, true, true, true],
    [true, true, true, true, true],
    [true, true, true, true, true],
    [true, true, true, true, true],
    [true, true, true, true, true]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.vpn_key_sharp,
            color: Colors.deepOrange,
            size: 52,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListCheckBox(lista_checks: lista_de_listas_checks[0]),
              ListCheckBox(lista_checks: lista_de_listas_checks[1]),
              ListCheckBox(lista_checks: lista_de_listas_checks[2]),
              ListCheckBox(lista_checks: lista_de_listas_checks[3]),
              ListCheckBox(lista_checks: lista_de_listas_checks[4]),
            ],
          ),
        ],
      ),
    );
  }
}
