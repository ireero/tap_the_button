import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_the_button/screens/phases/end_phase/end_phase.dart';

class PhaseTwoTwoTwo extends StatefulWidget {
  PhaseTwoTwoTwo({super.key});

  List<bool> lista_cores_botoes = [false, false, false, true];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PhaseTwoTwoTwoState();
  }
}

class _PhaseTwoTwoTwoState extends State<PhaseTwoTwoTwo> {
  void modifica(int posicao) {
    setState(() {
      widget.lista_cores_botoes[posicao] = !widget.lista_cores_botoes[posicao];
    });
    int check = 0;
    for (int i = 0; i < widget.lista_cores_botoes.length; i++) {
      if (widget.lista_cores_botoes[i] == true) {
        check++;
      }
      if (check == 4) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => EndPhaseOne(idFase: 2)));
      }
    }
    print(widget.lista_cores_botoes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(60),
                    color: widget.lista_cores_botoes[0]
                        ? Colors.yellow
                        : Colors.deepOrange,
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          modifica(0);
                        },
                        child: Text(
                          'Here!',
                          style: GoogleFonts.laila(
                              fontSize: 22,
                              color: widget.lista_cores_botoes[0]
                                  ? Colors.deepOrange
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(60),
                    color: widget.lista_cores_botoes[1]
                        ? Colors.yellow
                        : Colors.deepPurple,
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          modifica(1);
                        },
                        child: Text(
                          'Here!',
                          style: GoogleFonts.laila(
                              fontSize: 22,
                              color: widget.lista_cores_botoes[1]
                                  ? Colors.deepOrange
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    color: widget.lista_cores_botoes[2]
                        ? Colors.yellow
                        : Colors.pink,
                    padding: const EdgeInsets.all(60),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          modifica(2);
                        },
                        child: Text(
                          'Here!',
                          style: GoogleFonts.laila(
                              fontSize: 22,
                              color: widget.lista_cores_botoes[2]
                                  ? Colors.deepOrange
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: widget.lista_cores_botoes[3]
                        ? Colors.yellow
                        : Colors.blue,
                    padding: const EdgeInsets.all(60),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          modifica(3);
                        },
                        child: Text(
                          'Here!',
                          style: GoogleFonts.laila(
                              fontSize: 22,
                              color: widget.lista_cores_botoes[3]
                                  ? Colors.deepOrange
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
