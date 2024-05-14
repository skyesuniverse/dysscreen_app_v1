import 'package:dysscreen_app_v1/models/language_constants.dart';
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
          // 'About Dyslexia',
          translation(context).about_Dyslexia,
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
                          // "Common Signs and Symptoms",
                          translation(context).commonSignsAndSymptomsTitle,
                          style: TextStyle(
                            fontSize: screenWidth / 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: AspectRatio(
                          aspectRatio: 16 / 10,
                          child: Image.asset(
                            // Use Image.asset instead of Image.network
                            "assets/images/about2.jpg", // Use imagePath variable
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: Text(
                          // 'Dyslexia symptoms might be difficult to detect before a child begins school, but several early warning signs might indicate a problem. When a child reaches school age, the teacher may be the first to detect an issue. The severity of the issue varies, but it usually becomes obvious when the child begins to learn to read.',
                          translation(context).openText,
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 22, 22, 22),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SymptomCategory(
                        category:
                            translation(context).preschoolSymptomsCategory,
                        sentence:
                            translation(context).preschoolSymptomsSentence,
                        symptoms: [
                          translation(context).speechDelay,
                          translation(context).pronunciationIssues,
                          translation(context).rhymingAndRhymeDifficulties,
                          translation(context)
                              .difficultyWithLearningShapesColorsAndWritingName,
                          translation(context).difficultyWithRecountingAStory,
                        ],
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      SymptomCategory(
                        category:
                            translation(context).primarySchoolSymptomsCategory,
                        sentence:
                            translation(context).primarySchoolSymptomsSentence,
                        symptoms: [
                          translation(context)
                              .difficultiesWithReadingASingleWord,
                          translation(context)
                              .frequentlyConfusesSomeLettersWhenWriting,
                          translation(context).frequentlyWritesWordsBackwards,
                          translation(context).difficultyWithGrammar,
                          translation(context).avoidsReadingAloudInClass,
                          translation(context)
                              .avoidsActivitiesThatInvolveReading,
                        ],
                        screenWidth: screenWidth,
                      ),
                      SizedBox(height: 20),
                      SymptomCategory(
                        category:
                            translation(context).highSchoolSymptomsCategory,
                        sentence:
                            translation(context).highSchoolSymptomsSentence,
                        symptoms: [
                          translation(context).poorReading,
                          translation(context).poorSpelling,
                          translation(context).problemsWithWritingSummaries,
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
