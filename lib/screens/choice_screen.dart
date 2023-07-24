import 'package:flutter/material.dart';
import 'package:tap_the_button/models/phase.dart';
import 'package:tap_the_button/models/phase_control.dart';
import 'package:tap_the_button/screens/home_screen.dart';
import 'package:tap_the_button/screens/phases/phase1_screen.dart';
import 'package:tap_the_button/screens/phases/phase2_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceScreen extends StatelessWidget {
  ChoiceScreen({super.key});

  @override
  Widget build(context) {
    Phase().createClassPhases();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Phases',
            style: GoogleFonts.knewave(fontSize: 32),
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Card(
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: ListTile(
              leading: Text(
                '${index + 1}',
                style: GoogleFonts.knewave(
                  fontSize: 30,
                ),
              ),
              trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen(
                                idActivateScreen: index,
                                activateScreen:
                                    PhaseControl().list_screens[index])));
                  },
                  child: const Icon(
                    Icons.start,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
        itemCount: PhaseControl().list_screens.length,
      ),
    );
  }
}
