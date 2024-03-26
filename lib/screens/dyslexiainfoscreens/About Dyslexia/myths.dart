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
          'About Dyslexia',
          style: TextStyle(
            color: Colors.black, // 3
          ),
        ),

        // foregroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: Image.asset(
          //     'assets/images/splashscreen.png',
          //   ).image,
          // ),
        ),
        child: Container(
          // decoration: BoxDecoration(
          //   color: Color.fromARGB(154, 232, 232, 232),
          // ),
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
                          "5 Myths and Facts about Dyslexia",
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
                          'https://upload.wikimedia.org/wikipedia/commons/3/3d/Dyslexia.jpg', // Replace with your image URL
                          width: screenWidth, // Adjust width as needed
                          height: 200, // Adjust height as needed
                          fit: BoxFit.cover, // Adjust BoxFit as needed
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: Text(
                          'Dyslexia is a complex learning disorder affecting language processing, especially in reading and writing. Despite its widespread recognition, it is often surrounded by myths and misconceptions, leading to misunderstanding and stigma. Let\'s clarify some common myths:',
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 22, 22, 22),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      MythFactCard(
                        myth: 'Myth #1: Dyslexia is a sign of low intelligence',
                        fact:
                            'Fact: Dyslexia doesn\'t correlate with intelligence, as individuals with dyslexia often have average or above-average intelligence levels. They may have unique strengths in creativity, problem-solving, and visual-spatial reasoning.',
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      MythFactCard(
                        myth: 'Myth #2: Dyslexia only affects reading',
                        fact:
                            'Fact: Dyslexia, a condition characterized by difficulties in reading, can affect other language skills like spelling, writing, and verbal communication. It can also affect phonological awareness, fluency, comprehension, and word retrieval, impacting daily life and academic and professional success.',
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      MythFactCard(
                        myth:
                            'Myth #3: Dyslexia can be outgrown or cured with time',
                        fact:
                            'Fact: Dyslexia is a lifelong condition that requires appropriate intervention and support to manage difficulties and develop coping strategies. Early identification and intervention are crucial for improving outcomes and minimizing its impact on academic and social functioning. Many individuals with dyslexia lead successful lives.',
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      MythFactCard(
                        myth:
                            'Myth #4: Dyslexia is caused by laziness or lack of effort',
                        fact:
                            'Fact: Dyslexia is a neurological condition caused by brain structure and function differences, not laziness or motivation. Despite significant effort, dyslexic individuals still face persistent challenges in reading and language processing. Blaming them perpetuates stigma and hinders their efforts to seek support and accommodations.',
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      MythFactCard(
                        myth:
                            'Myth #5: People with dyslexia see letters and words backward',
                        fact:
                            'Fact: Dyslexia is not a visual impairment, but rather a condition affecting the ability to decode and recognize written words, leading to difficulties in reading fluency, accuracy, and comprehension, primarily due to phonological processing and language skills rather than visual perception.',
                        screenWidth: screenWidth,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                        child: Text(
                          'Dispelling myths and misconceptions about dyslexia is essential for fostering understanding, empathy, and support for individuals with the condition. By challenging stereotypes and promoting accurate information, we can create a more inclusive and supportive environment for individuals with dyslexia to thrive and reach their full potential.',
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
