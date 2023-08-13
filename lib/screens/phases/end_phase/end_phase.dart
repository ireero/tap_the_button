import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_the_button/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class EndPhaseOne extends StatelessWidget {
  EndPhaseOne({required this.idFase, super.key});

  void salvarFaseFinalizada() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('f$idFase', idFase);
  }

  int idFase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
            ),
            onPressed: () {
              salvarFaseFinalizada();
              RestartWidget.restartApp(context);
            },
            child: Text(
              'End',
              style: GoogleFonts.laila(color: Colors.white),
            )),
      ),
    );
  }
}
