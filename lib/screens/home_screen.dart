import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(
      {required this.idActivateScreen,
      required this.activateScreen,
      super.key});

  int idActivateScreen;
  Widget activateScreen;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
          const SizedBox(
            width: 48,
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.access_alarm_sharp)),
          const SizedBox(
            width: 48,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.data_array)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'TAP THE BUTTON!!!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => activateScreen,
                      ));
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Initiat',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
