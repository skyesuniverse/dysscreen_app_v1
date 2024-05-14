import 'package:dysscreen_app_v1/models/language_constants.dart';
import 'package:flutter/material.dart';

class IntroOfDyslexiaScreen extends StatefulWidget {
  const IntroOfDyslexiaScreen({super.key});

  @override
  State<IntroOfDyslexiaScreen> createState() => _IntroOfDyslexiaScreenState();
}

class _IntroOfDyslexiaScreenState extends State<IntroOfDyslexiaScreen> {
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
                          // "Introduction to Dyslexia",
                          translation(context).introTitle,
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
                            "assets/images/about1.jpeg", // Use imagePath variable
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                        child: Text(
                          // 'Dyslexia is a neurobiological learning disorder that causes problems in both accurate and fluent word recognition, as well as difficulty spelling and decoding words. Dyslexia, sometimes known as reading disability, is caused by specific differences in brain areas that responsible for language processing.',
                          translation(context).introText1,
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 22, 22, 22),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                        child: Text(
                          // 'Dyslexia is not caused by issues with intelligence, hearing, or vision. Most dyslexic children can do well in school with tutoring or a specialised education programme. Emotional support is also very crucial.',
                          translation(context).introText2,
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 22, 22, 22),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                        child: Text(
                          // 'Although there is no cure for dyslexia, early testing and intervention bring the best results. Dyslexia can go undiagnosed for years and not be recognised until adulthood, but it is never too late to seek help.',
                          translation(context).introText3,
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

  void insertDialog() {}
}
