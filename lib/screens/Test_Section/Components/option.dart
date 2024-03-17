import 'package:dysscreen_app_v1/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(builder: (qnController) {
      Color getTheRightColor() {
        // If the question is answered
        if (qnController._selectedAns) {
          // If this option is the selected answer
          if (index == qnController.selectedAns) {
            return Colors.black; // Show green color for selected answer
          }
        }
        return Colors.red; // Show gray color for unselected answer
      }

      return InkWell(
        onTap: press,
        child: Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black45),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${index + 1}. $text",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      );
    });
  }
}
