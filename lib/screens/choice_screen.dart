import 'package:flutter/material.dart';
import 'package:tap_the_button/models/phase_control.dart';
import 'package:tap_the_button/models/title_text_choice_phase.dart';
import 'package:tap_the_button/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({super.key});

  @override
  State<ChoiceScreen> createState() {
    return _ChoiceScreenState();
  }
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  // ignore: non_constant_identifier_names
  List<List<int>> list_scapes_phases = [
    [1, 1, 1],
    [1, 2, 1],
    [1, 1, 2]
  ];

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Phases',
            style: GoogleFonts.knewave(fontSize: 32, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Card(
          color: Colors.deepOrange,
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListTile(
              subtitle: Center(
                child: Text(
                  '${list_scapes_phases[index]}'
                      .replaceAll('[', '')
                      .replaceAll(']', '')
                      .replaceAll(',', ' - '),
                  style: GoogleFonts.laila(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              leading: TextChoicePhase(index: index),
              trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen(
                                idActivateScreen: index,
                                activateScreen:
                                    PhaseControl().listScreens[index])));
                  },
                  child: const Icon(
                    Icons.start,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
        itemCount: PhaseControl().listScreens.length,
      ),
    );
  }
}
