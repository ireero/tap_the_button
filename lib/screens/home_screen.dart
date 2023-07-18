import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(
      {required this.idActivateScreen,
      required this.activateScreen,
      super.key});

  int idActivateScreen;
  Widget activateScreen;

  List<String> listOfTips = [
    'I go where the blue goes...',
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
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: Text(
                            'Tip of the level :)',
                            style: GoogleFonts.laila(),
                          ),
                          content: const Text(
                              'This is the tutorial, Just look and go'),
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
                              ),
                            ),
                          ],
                        ));
              },
              icon: const Icon(Icons.tips_and_updates)),
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
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(241, 91, 3, 1),
                  Color.fromRGBO(236, 56, 2, 1),
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => widget.activateScreen,
                      ));
                },
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.access_alarms,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
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
      ),
    );
  }
}
