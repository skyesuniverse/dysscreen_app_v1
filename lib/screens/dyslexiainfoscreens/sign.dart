import 'package:dysscreen_app_v1/widgets/bullet_widget.dart';
import 'package:flutter/material.dart';

class SignAndSymtoms extends StatefulWidget {
  const SignAndSymtoms({super.key});

  @override
  State<SignAndSymtoms> createState() => _SignAndSymtomsState();
}

class _SignAndSymtomsState extends State<SignAndSymtoms> {
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
                          "Common Signs and Symptoms",
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
                      SymptomCategory(
                        category: 'Symptoms of dyslexia among preschoolers',
                        sentence:
                            'Symptoms of dyslexia in a preschooler may include:',
                        symptoms: [
                          'Speech delay',
                          'Pronunciation issues',
                          'Rhyming and rhyme difficulties',
                          'Difficulty with learning shapes, colors, and writing one\'s name',
                          'Difficulty with recounting a story in the correct order of events',
                        ],
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      SymptomCategory(
                        category:
                            'Symptoms of dyslexia among high school children',
                        sentence:
                            'Symptoms of dyslexia in a primary school age child may include:',
                        symptoms: [
                          'Difficulties with reading a single word',
                          'Frequently confuses some letters when writing, such as \'d\' and \'b\' or \'m\' and \'w\'',
                          'Frequently writes words backwards, such as writing \'pit\' when the word \'tip\' was intended',
                          'Difficulty with grammar, such as learning prefixes or suffixes',
                          'Prefers not to read aloud in class',
                          'Avoiding activities that involve reading',
                        ],
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      SymptomCategory(
                        category:
                            'Symptoms of dyslexia among high school children',
                        sentence:
                            'Symptoms of dyslexia in a high school student may include:',
                        symptoms: [
                          'Poor reading',
                          'Poor spelling, especially many misspellings of the same term in a single writing assignment',
                          'Facing problems with writing summaries',
                        ],
                        screenWidth: screenWidth,
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

class SymptomCategory extends StatelessWidget {
  final String category, sentence;
  final List<String> symptoms;
  final double screenWidth;

  SymptomCategory(
      {required this.category,
      required this.sentence,
      required this.symptoms,
      required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: TextStyle(
                fontSize: screenWidth / 23, fontWeight: FontWeight.bold),
          ),
          Text(
            sentence,
            style: TextStyle(
              fontSize: screenWidth / 25,
            ),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: symptoms.map((symptom) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: BulletList(['$symptom'], screenWidth),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
