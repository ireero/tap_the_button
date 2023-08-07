import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      onPressed: () {},
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
                      onPressed: () {},
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
