import 'package:DysScreen/models/language_constants.dart';
import 'package:flutter/material.dart';

class MythsAndFactScreen extends StatefulWidget {
  const MythsAndFactScreen({super.key});

  @override
  State<MythsAndFactScreen> createState() => _MythsAndFactScreenState();
}

class _MythsAndFactScreenState extends State<MythsAndFactScreen> {
  late double screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          // 'About Dyslexia',
          translation(context).about_Dyslexia,
          style: TextStyle(
            color: Colors.black, // 3
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
                          // "5 Myths and Facts about Dyslexia",
                          translation(context).mythsAndFactsTitle,
                          style: TextStyle(
                            fontSize: screenWidth / 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: AspectRatio(
                          aspectRatio: 16 / 10,
                          child: Image.asset(
                            // Use Image.asset instead of Image.network
                            "assets/images/about3.jpg", // Use imagePath variable
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: Text(
                          // 'Dyslexia is a complex learning disorder affecting language processing, especially in reading and writing. Despite its widespread recognition, it is often surrounded by myths and misconceptions, leading to misunderstanding and stigma. Let\'s clarify some common myths:',
                          translation(context).introText,
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 22, 22, 22),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      MythFactCard(
                        myth: translation(context).myth1,
                        fact: translation(context).fact1,
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      MythFactCard(
                        myth: translation(context).myth2,
                        fact: translation(context).fact2,
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      MythFactCard(
                        myth: translation(context).myth3,
                        fact: translation(context).fact3,
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      MythFactCard(
                        myth: translation(context).myth4,
                        fact: translation(context).fact4,
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      MythFactCard(
                        myth: translation(context).myth5,
                        fact: translation(context).fact5,
                        screenWidth: screenWidth,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                        child: Text(
                          // 'Dispelling myths and misconceptions about dyslexia is essential for fostering understanding, empathy, and support for individuals with the condition. By challenging stereotypes and promoting accurate information, we can create a more inclusive and supportive environment for individuals with dyslexia to thrive and reach their full potential.',
                          translation(context).outroText,
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

class MythFactCard extends StatelessWidget {
  final String myth;
  final String fact;
  final double screenWidth;

  MythFactCard(
      {required this.myth, required this.fact, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              myth,
              style: TextStyle(
                fontSize: screenWidth / 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '\u{1F4A1} $fact',
              style: TextStyle(
                fontSize: screenWidth / 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
