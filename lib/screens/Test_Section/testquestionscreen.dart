import 'package:dysscreen_app_v1/controllers/question_controller.dart';
import 'package:dysscreen_app_v1/models/Questions_46.dart';
import 'package:dysscreen_app_v1/models/Questions_79.dart';
import 'package:dysscreen_app_v1/screens/Test_Section/Components/question_card.dart';
import 'package:dysscreen_app_v1/screens/homescreen.dart';
import 'package:dysscreen_app_v1/screens/mainscreen.dart';
import 'package:dysscreen_app_v1/screens/result.dart';
import 'package:dysscreen_app_v1/widgets/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestQuestionScreen extends StatefulWidget {
  const TestQuestionScreen(
      {Key? key,
      required this.childName,
      required this.selectedAge,
      required this.selectedGender})
      : super(key: key);

  final String childName;
  final String selectedAge;
  final String selectedGender;

  @override
  State<TestQuestionScreen> createState() => _TestQuestionScreenState();
}

class _TestQuestionScreenState extends State<TestQuestionScreen> {
  late double screenHeight, screenWidth;
  late PageController _pageController;
  int _currentPageIndex = 0;
  late List<dynamic> questionsList; // List to hold the fetched questions
  late QuestionController
      _questionController; // Declare _questionController here

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    // Fetch the questions based on selectedAge and current locale
    questionsList = getQuestionsForAge(
        widget.selectedAge, Get.locale?.languageCode ?? 'en');

    // Initialize a new QuestionController for the selected age group and current locale
    _questionController = Get.put(QuestionController(
        widget.selectedAge, Get.locale?.languageCode ?? 'en'));
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    // So that we have acccess our controller
    _questionController = Get.put(QuestionController(
        widget.selectedAge, Get.locale?.languageCode ?? 'en'));

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
      body: Stack(children: [
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
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            "Question ${_questionController.questionNumber.value}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: Color.fromARGB(255, 255, 255, 255)),
                        children: [
                          TextSpan(
                            text: "/${questionsList.length}",
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
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Expanded(
                  child: PageView.builder(
                    // Block swipe to next qn
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNum,
                    itemCount: questionsList.length,
                    itemBuilder: (context, index) => Question_Card(
                      question: questionsList[index],
                      screenHeight: screenHeight,
                      questionNumber: index + 1,
                    ),
                  ),
                ),
                ColoredBox(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          // flex: 2,
                          child: Visibility(
                            visible: _questionController.isFirstQuestion,
                            child: Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: MainButton(
                                  onTap: () {
                                    _questionController.previousQuestion();
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ),
                        // Left arrow button
                        Expanded(
                          child: Obx(
                            () => Visibility(
                                child: MainButton(
                              onTap: () {
                                _questionController.isLastQuestion
                                    ? submitTest()
                                    : _questionController.nextQuestion();
                              },
                              title: _questionController.isLastQuestion
                                  ? 'Complete'
                                  : 'Next',
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
        )
      ]),
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
                // Navigator.pop(context, true); // Close the dialog with a result
                // Navigator.pop(context, true); // Close the dialog with a result
                // Navigator.of(context).popUntil((route) => route
                //     .isFirst); // Close all routes until reaching the first one (HomeTabScreen)
                Get.deleteAll();

                Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => MainScreen()),
                  (route) => false,
                );
                // _pageController.jumpToPage(0);
                // startNewTest(); // Start a new test when quitting

                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => MainScreen()),
                // );
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

  void submitTest() {
    // Check if all questions have been answered
    if (_questionController.allQuestionsAnswered) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            title: const Text(
              "Submit the Test?",
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (content) => ResultScreen(
                        childName: widget
                            .childName, // Pass child's name to the test screen
                        selectedAge: widget
                            .selectedAge, // Pass selected age to the test screen
                        selectedGender: widget
                            .selectedGender, // Pass selected age to the test screen
                      ),
                    ),
                  );
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
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Please answer all the question",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white70,
      ));
      return;
    }
  }

  List<dynamic> getQuestionsForAge(String selectedAge, String currentLocale) {
    if (selectedAge == "4 - 6") {
      return question_46_data
          .map(
            (data) => Question_46(
              id: data['id'],
              category: data['category'] as Map<String, dynamic>,

              instruction:
                  data['instruction'] as Map<String, dynamic>, // Cast to Map

              imagePath: data['imagePath'],

              question: data['question'] as Map<String, dynamic>, // Cast to Map

               options: Map<String, List<String>>.from(data['options']),
              answer: data['answer_index'],
            ),
          )
          .toList();
    } else {
      return question_79_data
          .map(
            (data) => Question_79(
              id: data['id'],
              category: data['category'][currentLocale] ?? '',
              instruction: data['instruction'][currentLocale] ?? '',
              question: data['question'][currentLocale] ?? '',
              options: List<String>.from(data['options'][currentLocale] ?? []),
              answer: data['answer_index'],
            ),
          )
          .toList();
    }
  }
}
