import 'package:flutter/material.dart';
import 'package:tap_the_button/screens/phases/phase2.1_screen.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<bool> lista_switch_ligado = List.generate(9, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SwitchControl(
                  index: 0,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
                SwitchControl(
                  index: 1,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
                SwitchControl(
                  index: 2,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SwitchControl(
                  index: 3,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
                SwitchControl(
                  index: 4,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
                SwitchControl(
                  index: 5,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SwitchControl(
                  index: 6,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
                SwitchControl(
                  index: 7,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
                SwitchControl(
                  index: 8,
                  listaSwitchLigado: lista_switch_ligado,
                  adicionaValor: adicionaValor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void adicionaValor(int index) {
    setState(() {
      lista_switch_ligado[index] = true;
      print(lista_switch_ligado);
    });
    int tds = 0;
    for (var v in lista_switch_ligado) {
      if (v == true) {
        tds++;
      }
      if (tds >= 9) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PhaseTwoPOne(),
            ));
      }
      // print(tds);
    }
  }
}

class SwitchControl extends StatefulWidget {
  const SwitchControl({
    required this.index,
    required this.listaSwitchLigado,
    required this.adicionaValor,
    Key? key,
  }) : super(key: key);

  final int index;
  final List<bool> listaSwitchLigado;
  final void Function(int) adicionaValor;

  @override
  State<SwitchControl> createState() => _SwitchControlState();
}

class _SwitchControlState extends State<SwitchControl> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeColor: Colors.amber,
      thumbColor: const MaterialStatePropertyAll<Color>(
        Color.fromARGB(255, 255, 255, 100),
      ),
      onChanged: (bool value) {
        setState(() {
          light = value;
          if (value) {
            widget.adicionaValor(widget.index);
          }
        });
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SecondScreen(),
  ));
}
