import 'package:flutter/material.dart';

class LineButton extends StatefulWidget {
  const LineButton({required this.qtdButtons, super.key});

  final int qtdButtons;

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

  void criaBtns() {
    lista_btns = [];
    for (int i = 0; i < widget.qtdButtons; i++) {
      lista_ativos.add(false);
      lista_btns.add(ElevatedButton(
        onPressed: () {
          changeColor(i);
        },
        style: ElevatedButton.styleFrom(
          elevation: 6,
          padding: const EdgeInsets.all(16),
          backgroundColor: lista_ativos[i] == false ? Colors.red : Colors.green,
        ),
        child: const Text(
          'Here!',
          style: TextStyle(color: Colors.white, fontSize: 18),
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
