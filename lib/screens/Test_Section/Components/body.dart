import 'package:dysscreen_app_v1/controllers/question_controller.dart';
import 'package:dysscreen_app_v1/screens/Test_Section/Components/question_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);
  late double screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
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
                          .copyWith(color: Color.fromARGB(255, 255, 255, 255)),
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
                      key: key,
                      question: _questionController.questions[index],
                      // controller: _questionController.pageController,
                      // onPageChanged: _questionController.updateTheQnNum,
                      // itemCount: _questionController.questions.length,
                    ),
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
