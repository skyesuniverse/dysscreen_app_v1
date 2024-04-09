import 'package:dysscreen_app_v1/controllers/question_controller.dart';
import 'package:dysscreen_app_v1/models/Questions_46.dart';
import 'package:dysscreen_app_v1/screens/Test_Section/Components/option.dart';
import 'package:dysscreen_app_v1/screens/Test_Section/testquestionscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Question_Card extends StatelessWidget {
  const Question_Card({
    Key? key,
    // it means we have to pass this
    required this.question,
    required this.screenHeight,
    required this.questionNumber,
  }) : super(key: key);

  final double screenHeight;
  final dynamic question; // Accepting dynamic type for the question
  final int questionNumber;

  @override
  Widget build(BuildContext context) {
    // QuestionController _controller = Get.put(QuestionController());

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0), // Change the value as needed
          topRight: Radius.circular(20.0), // Change the value as needed
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.04),
          Text(
            'Instruction',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          Text(
            question.instruction,
          ),
          SizedBox(height: screenHeight * 0.06),
          Text(
            'Question',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          Text(
            question.question,
          ),
          SizedBox(height: screenHeight * 0.06),
          //option section
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              questionNumber: questionNumber,

              // press: () {
              //   // Determine whether the answer is "Yes" or "No"
              //   bool answeredYes = index == 0; // Assuming "Yes" is at index 0
              //   _controller.recordAnswer(answeredYes);
              // },
            ),
          ),
        ],
      ),
    );
  }
}
