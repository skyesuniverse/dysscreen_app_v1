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
      child: Scrollbar(
        // isAlwaysShown: true, // Ensure scrollbar is always shown
        thickness: 6, // Set thickness of the scrollbar
        radius: Radius.circular(3), // Set radius of the scrollbar
        // controller: ScrollController(), // Optional: Scroll controller
        // trackVisibility: true,
        interactive: true,
        child: SingleChildScrollView(
          physics:
              AlwaysScrollableScrollPhysics(), // Ensure scrollbar is always visible

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.04),
              Text(
                'Instruction',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenHeight * 0.009),
              Text(
                question.instruction,
                // style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenHeight * 0.02),
              // Display image if imagePath is provided
              if (question.imagePath != null)
                GestureDetector(
                  onTap: () {
                    // Show larger version of the image (e.g., in a dialog)
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          insetPadding:
                              EdgeInsets.zero, // Remove default padding

                          child: InteractiveViewer(
                            scaleEnabled:
                                true, // Optional: Allow scaling (zooming)
                            panEnabled:
                                true, // Optional: Allow panning (dragging)
                            boundaryMargin: EdgeInsets.all(0.0),
                            minScale: 0.5,
                            maxScale: 3.0,
                            child: Image.asset(
                              question.imagePath!,
                              fit: BoxFit.contain, // Adjust as needed
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 9),
                    child: Image.asset(
                      question.imagePath!,
                      fit: BoxFit.cover, // Adjust BoxFit as needed
                    ),
                  ),
                ),

              SizedBox(height: screenHeight * 0.045),
              Text(
                'Question',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: screenHeight * 0.009),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
