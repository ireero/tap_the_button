import 'package:flutter/material.dart';

class ListCheckBox extends StatefulWidget {
  ListCheckBox({required this.lista_checks, super.key});

  List<bool> lista_checks;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListCheckBoxState();
  }
}

class _ListCheckBoxState extends State<ListCheckBox> {
  void mudaBool(int index) {
    setState(() {
      widget.lista_checks[index] = !widget.lista_checks[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => mudaBool(0),
        value: widget.lista_checks[0],
      ),
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => mudaBool(1),
        value: widget.lista_checks[1],
      ),
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => mudaBool(2),
        value: widget.lista_checks[2],
      ),
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => mudaBool(3),
        value: widget.lista_checks[3],
      ),
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => mudaBool(4),
        value: widget.lista_checks[4],
      )
    ]);
  }
}
