import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_the_button/models/button_timer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(
      {required this.idActivateScreen,
      required this.activateScreen,
      super.key});

  int idActivateScreen;
  Widget activateScreen;

  List<String> listOfTips = [
    'Tutorial, just go and you will find the route',
    'I go where the orange goes...'
  ];

  double time = 4.0;

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  void sleep(Duration duration) {}

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        actions: [
          const SizedBox(
            width: 48,
          ),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Time', style: GoogleFonts.laila()),
                    content: const Text('Time limit to clyde the phase'),
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
                'Phase: ${widget.idActivateScreen}',
                style: const TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Timer -> Click on the timer in the top right in screen for see the time limit to complete the phase.\nTip: ${widget.listOfTips[widget.idActivateScreen]}',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                Text('${widget.time != 4 ? widget.time : ''}',
                    style: GoogleFonts.knewave(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
