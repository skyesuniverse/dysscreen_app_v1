import 'dart:async';

import 'package:dysscreen_app_v1/screens/homescreen.dart';
import 'package:dysscreen_app_v1/screens/mainscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late double screenHeight, screenWidth;
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/splashscreen.png'),
                      fit: BoxFit.cover))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "DysScreen",
                style: TextStyle(
                    fontSize: screenWidth * 0.09,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.4, // Adjust width as per your preference
                height: screenHeight *
                    0.005, // Adjust height as per your preference
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 15,
            child: Text(
              "- Version 1.0 -",
              style: TextStyle(
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          )
        ],
      )),
    );
  }
}
