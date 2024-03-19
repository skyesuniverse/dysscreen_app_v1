import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.00,
          backgroundColor: Color.fromARGB(255, 164, 72, 72),
          leading: Icon(Icons.apps_rounded, color: Colors.white),
          actions: [
            IconButton(
              onPressed: () {
                // Add your functionality here
                quitTest();
              },
              icon: const Icon(
                Icons.close_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  void quitTest() {}
}
