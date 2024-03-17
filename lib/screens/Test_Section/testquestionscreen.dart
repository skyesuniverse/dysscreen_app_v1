import 'package:dysscreen_app_v1/models/Questions.dart';
import 'package:dysscreen_app_v1/screens/Test_Section/Components/question_card.dart';
import 'package:dysscreen_app_v1/screens/homescreen.dart';
import 'package:flutter/material.dart';

class TestQuestionScreen extends StatefulWidget {
  const TestQuestionScreen({super.key});

  @override
  State<TestQuestionScreen> createState() => _TestQuestionScreenState();
}

class _TestQuestionScreenState extends State<TestQuestionScreen> {
  late double screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.00,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.apps_rounded, color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              // Add your functionality here
              quitTest();
            },
            icon: const Icon(
              Icons.close_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/splashscreen.png'),
                      fit: BoxFit.cover))),
          SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                        text: "Question 1",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: Color.fromARGB(255, 255, 255, 255)),
                        children: [
                          TextSpan(
                            text: "/10",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Expanded(
                    child: PageView.builder(
                      itemBuilder: (context, index) => Question_Card(
                        screenHeight: screenHeight,
                      ),
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }

  void quitTest() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: const Text(
            "Quit the Test?",
            style: TextStyle(),
          ),
          content: const Text("Are you sure?", style: TextStyle()),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Yes",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                Navigator.pop(context); // Close the current screen
                // updateCatch();
                //registerUser();
              },
            ),
            TextButton(
              child: const Text(
                "No",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
