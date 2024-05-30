import 'package:DysScreen/models/DiagnosisAndTreatment.dart';
import 'package:DysScreen/models/language_constants.dart';
import 'package:flutter/material.dart';

class DiagnosisAndTreatment extends StatefulWidget {
  const DiagnosisAndTreatment({super.key});

  @override
  State<DiagnosisAndTreatment> createState() => _DiagnosisAndTreatmentState();
}

class _DiagnosisAndTreatmentState extends State<DiagnosisAndTreatment> {
  late double screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    // Get the current locale
    Locale currentLocale = Localizations.localeOf(context);

    // Determine which language to display based on the locale
    String languageCode = currentLocale.languageCode;

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
                          // "Diagnosis and Treatment of Dyslexia: Understanding and Supporting Individuals",
                          translation(context).diagnosis_and_Treatment_title,
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
                            "assets/images/diagnosis.jpg", // Use imagePath variable
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                            child: Text(
                              // 'Diagnosis of Dyslexia:',
                              translation(context).diagnosis_of_Dyslexia,
                              style: TextStyle(
                                fontSize: screenWidth / 23,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: Text(
                          // 'Diagnosing dyslexia involves a comprehensive assessment by qualified professionals, such as educational psychologists, speech-language pathologists, or specialized educators. The assessment typically includes the following components:',
                          translation(context).diagnosis_intro,
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 22, 22, 22),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: diagnosticCriteria.map((criteria) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\u{1FA7A} ${criteria.title[languageCode] ?? ''}',
                                  style: TextStyle(
                                    fontSize: screenWidth / 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  criteria.description[languageCode] ?? '',
                                  style: TextStyle(
                                    fontSize: screenWidth / 25,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 40, child: Divider()),

                      ////////////////Treatment section
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                            child: Text(
                              // 'Treatment of Dyslexia:',
                              translation(context).treatment_of_Dyslexia,
                              style: TextStyle(
                                fontSize: screenWidth / 23,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: Text(
                          // 'While dyslexia is a lifelong condition, appropriate intervention and support can help individuals manage their difficulties and achieve academic success. Treatment for dyslexia typically involves the following components:',
                          translation(context).treatment_intro,
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 22, 22, 22),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: dyslexiaTreatment.map((treatment) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\u{1F9EA} ${treatment.title[languageCode] ?? ''}',
                                  style: TextStyle(
                                    fontSize: screenWidth / 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  treatment.description[languageCode] ?? '',
                                  style: TextStyle(
                                    fontSize: screenWidth / 25,
                                  ),
                                  // textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
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
