import 'package:flutter/material.dart';

void main() => runApp(const TakeTestScreen());

class TakeTestScreen extends StatefulWidget {
  const TakeTestScreen({super.key});

  @override
  State<TakeTestScreen> createState() => _TakeTestScreenState();
}

class _TakeTestScreenState extends State<TakeTestScreen> {
  String maintitle = 'Test';
  late double screenHeight, screenWidth;

  @override
  void initState() {
    super.initState();
    print('Test');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/splashscreen.png',
          ).image,
        ),
      ),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(24, 80, 24, 24),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Text(
                      "Dyslexia Assessment and Screening Test",
                      style: TextStyle(
                        fontSize: screenWidth / 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 24),
                    child: Text(
                      'This test is designed to provide valuable insights into your child\'s reading and writing abilities, helping to identify potential signs of dyslexia at an early stage.\n\nThroughout the test, instructions and questions will be given, your child will encounter engaging activities that assess key skills such as reading comprehension, phonological awareness, and writing proficiency. \n\nThe assessment typically takes 10-15 minutes to complete, ensuring a thorough evaluation without causing fatigue for the child.',
                      style: TextStyle(
                        fontSize: screenWidth / 32,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 190, 190, 190),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text(
                    'Please enter your child\'s details below to begin the assessment.',
                    style: TextStyle(
                      fontSize: screenWidth / 32,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic, // Set text to italic

                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: TextField(),
                  ),
                  Row(),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          insertDialog();
                        },
                        child: const Text("Start Test")),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    ));
  }

  void insertDialog() {}
}
