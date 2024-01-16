import 'package:flutter/material.dart';

void main() => runApp(const IntroOfDyslexiaScreen());

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
          backgroundColor: Color.fromARGB(154, 232, 232, 232),
          foregroundColor: Theme.of(context).colorScheme.secondary,
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
            decoration: BoxDecoration(
              color: Color.fromARGB(154, 232, 232, 232),
            ),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 5, 24, 24),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Text(
                            "Introduction to Dyslexia",
                            style: TextStyle(
                              fontSize: screenWidth / 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                          child: Image.network(
                            'https://media.licdn.com/dms/image/D4D12AQHnU6qlUfRg6g/article-cover_image-shrink_600_2000/0/1696751614672?e=2147483647&v=beta&t=2SoHLBFcE46uUarkIeF4mRJHI8L64MqkWsxnr_kvAls', // Replace with your image URL
                            width: screenWidth, // Adjust width as needed
                            height: 200, // Adjust height as needed
                            fit: BoxFit.cover, // Adjust BoxFit as needed
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                          child: Text(
                            'Dyslexia is a type of specific learning difficulty (SLD) in which the person has difficulties with language and words. The term dyslexia, although still used by some, is generally felt to be too narrow and SLD is often used to describe these learning difficulties. This is because the learning difficulties are usually broader than just reading difficulties; most children with SLD also have difficulty with spelling.\n\nThe most common characteristic is that people have difficulty reading and spelling for no apparent reason. The person may be intelligent, able to achieve well in other areas and exposed to the same education as others, but is unable to read at the expected level. Common problem areas include spelling, comprehension, reading and identification of words. Estimates vary, but up to five per cent of the population are thought to have dyslexia.',
                            style: TextStyle(
                              fontSize: screenWidth / 32,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 22, 22, 22),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                          child: Text(
                            'Despite intensive research, the exact causes remain unknown. While most people affected eventually learn to read, they may have severe spelling problems unless they get support and specialised education. Dyslexia isn\’t a symptom of low intelligence. For example, Leonardo da Vinci and Thomas Edison - both highly intelligent and creative people - had dyslexia.',
                            style: TextStyle(
                              fontSize: screenWidth / 32,
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
        ));
  }

  void insertDialog() {}
}
