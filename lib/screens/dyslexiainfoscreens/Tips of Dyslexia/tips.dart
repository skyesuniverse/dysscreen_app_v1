import 'package:flutter/material.dart';

class TipsForDyslexia extends StatefulWidget {
  const TipsForDyslexia({super.key});

  @override
  State<TipsForDyslexia> createState() => _TipsForDyslexiaState();
}

class _TipsForDyslexiaState extends State<TipsForDyslexia> {
  late double screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'About Dyslexia',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 5, 24, 24),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tips for Dyslexia: Supporting Individuals at Home, Preschool, and Primary School",
                          style: TextStyle(
                            fontSize: screenWidth / 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: Image.network(
                          'https://www.readabilitytutor.com/wp-content/uploads/2022/11/How-AI-can-Support-Students-with-Dyslexia.jpg', // Replace with your image URL
                          width: screenWidth, // Adjust width as needed
                          height: 200, // Adjust height as needed
                          fit: BoxFit.cover, // Adjust BoxFit as needed
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: Text(
                          'Dyslexia symptoms might be difficult to detect before a child begins school, but several early warning signs might indicate a problem. When a child reaches school age, the teacher may be the first to detect an issue. The severity of the issue varies, but it usually becomes obvious when the child begins to learn to read.',
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 22, 22, 22),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
