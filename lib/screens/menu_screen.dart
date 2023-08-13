import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_the_button/screens/choice_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Tap The Button',
            style: GoogleFonts.laila(
              fontSize: 32,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChoiceScreen()));
            },
            // ignore: sort_child_properties_last
            child: Text('Here!',
                style: GoogleFonts.laila(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
            ),
          )
        ]),
      ),
    );
  }
}
