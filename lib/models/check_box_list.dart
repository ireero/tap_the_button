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
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => setState(() {
          widget.lista_checks[0] = !widget.lista_checks[0];
        }),
        value: widget.lista_checks[0],
      ),
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => setState(() {
          widget.lista_checks[1] = !widget.lista_checks[1];
        }),
        value: widget.lista_checks[1],
      ),
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => setState(() {
          widget.lista_checks[2] = !widget.lista_checks[2];
        }),
        value: widget.lista_checks[2],
      ),
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => setState(() {
          widget.lista_checks[3] = !widget.lista_checks[3];
        }),
        value: widget.lista_checks[3],
      ),
      Checkbox(
        activeColor: Colors.deepOrange,
        onChanged: (value) => setState(() {
          widget.lista_checks[4] = !widget.lista_checks[4];
        }),
        value: widget.lista_checks[4],
      )
    ]);
  }
}
