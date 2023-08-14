import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_the_button/models/button_timer.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen(
      {required this.idActivateScreen,
      required this.activateScreen,
      super.key});

  int idActivateScreen;
  Widget activateScreen;

  List<String> listOfTips = [
    'Tutorial, just go and you will find the route',
    'I go where the orange goes...',
    'The secret is the key'
  ];

  List<double> listOfTimes = [60.0, 58.0, 50.0];

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.deepOrange,
        actions: [
          const SizedBox(
            width: 48,
          ),
          IconButton(
              color: Colors.black,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Time', style: GoogleFonts.laila()),
                    content: Text(
                      'Time limit to clyde the phase:\n ${widget.listOfTimes[widget.idActivateScreen]} seconds',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    actions: [
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                          ),
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: const Text(
                            'OKAY',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.timer))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Phase: ${widget.idActivateScreen + 1}',
                style: GoogleFonts.laila(
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Timer -> Click on the timer in the top right in screen for see the time limit to complete the phase.\nTip: ${widget.listOfTips[widget.idActivateScreen]}',
                style: GoogleFonts.laila(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TAP THE BUTTON!!!',
                  style: GoogleFonts.knewave(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                ButtonTimer(
                  activateScreen: widget.activateScreen,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
