import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_the_button/screens/phases/Phase2/phase2.2.1.dart';
import 'package:tap_the_button/screens/phases/Phase2/phase2.2.2.dart';

class PhaseTwoPOne extends StatelessWidget {
  const PhaseTwoPOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PhaseTwoTwoOne(),
                            ));
                      },
                      child: Text(
                        'Here!',
                        style: GoogleFonts.laila(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PhaseTwoTwoTwo(),
                            ));
                      },
                      child: Text(
                        'Here!',
                        style: GoogleFonts.laila(
                          color: Colors.yellow,
                          fontSize: 12,
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
