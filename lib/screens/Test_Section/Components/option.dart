import 'package:dysscreen_app_v1/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.text,
    required this.index,
    required this.questionNumber,
  }) : super(key: key);

  final String text;
  final int index;

  final int questionNumber;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.find();

    return GetBuilder<QuestionController>(builder: (controller) {
      bool isSelected =
          controller.getSelectedOptionIndex(questionNumber) == index;

      return InkWell(
        onTap: () {
          // If the option is already selected, do nothing (allow it to remain selected)
          if (isSelected) {
            return;
          } else {
            // Otherwise, select this option
            _controller.recordAnswer(
                index, index == 0 // Assuming "Yes" is the correct answer
                );
          }
        },
        child: Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border:
                Border.all(color: isSelected ? Colors.blue : Colors.black45),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    color: isSelected ? Colors.blue : Colors.black,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal),
              ),
              if (isSelected)
                Icon(
                  Icons.done,
                  color: Colors.blue,
                ),
            ],
          ),
        ),
      );
    }); //
  }
}
