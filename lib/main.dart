import 'package:dysscreen_app_v1/screens/Test_Section/testquestionscreen.dart';
import 'package:dysscreen_app_v1/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'BarterIt',
      theme: ThemeData(
        // primarySwatch: Color(0xFF03A9F4),
        colorSchemeSeed: const Color(0xFF03A9F4),
        useMaterial3: true,
      ),
      home: const TestQuestionScreen(),
    );
  }
}
