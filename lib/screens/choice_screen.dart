import 'package:flutter/material.dart';
import 'package:tap_the_button/models/phase.dart';
import 'package:tap_the_button/screens/home_screen.dart';
import 'package:tap_the_button/screens/phases/phase1_screen.dart';
import 'package:tap_the_button/screens/phases/phase2_screen.dart';

class ChoiceScreen extends StatelessWidget {
  ChoiceScreen({super.key});

  List<Widget> list_screens = [FirstScreen(), SecondScreen()];

  @override
  Widget build(context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Card(
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: ListTile(
              leading: Text(
                'Phase ${index + 1}',
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen(
                                idActivateScreen: index,
                                activateScreen: list_screens[index])));
                  },
                  child: const Icon(Icons.start)),
            ),
          ),
        ),
        itemCount: list_screens.length,
      ),
    );
  }
}
