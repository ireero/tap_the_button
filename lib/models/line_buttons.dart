import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/phases/end_phase/end_phase_01.dart';

class LineButton extends StatefulWidget {
  LineButton({required this.qtdButtons, super.key});

  final int qtdButtons;
  int qtdBtnsClicados = 0;

  @override
  State<LineButton> createState() {
    return _LineButtonState();
  }
}

class _LineButtonState extends State<LineButton> {
  List<ElevatedButton> lista_btns = [];

  List<bool> lista_ativos = [];

  void changeColor(int n) {
    setState(() {
      lista_ativos[n] = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    criaBtns();
    super.initState();
  }

  void addEVerifica() {
    widget.qtdBtnsClicados++;
    if (widget.qtdBtnsClicados >= 5) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EndPhaseOne(),
          ));
    }
  }

  void criaBtns() {
    lista_btns = [];
    for (int i = 0; i < widget.qtdButtons; i++) {
      lista_ativos.add(false);
      lista_btns.add(ElevatedButton(
        onPressed: () {
          changeColor(i);
          addEVerifica();
        },
        style: ElevatedButton.styleFrom(
          elevation: 6,
          padding: const EdgeInsets.all(16),
          backgroundColor: lista_ativos[i] == false ? Colors.red : Colors.green,
        ),
        child: Text(
          lista_ativos[i] == false ? 'Here!' : ':)',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    criaBtns();
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: lista_btns);
  }
}
