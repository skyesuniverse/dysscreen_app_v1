import 'package:dysscreen_app_v1/models/Questions.dart';
import 'package:dysscreen_app_v1/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            instruction: question['instruction'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();
  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _yesCount = 0;
  int get yesCount => this._yesCount;

  int _noCount = 0;
  int get noCount => this._noCount;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _selectedOptionIndex = -1; // Initially no option is selected
  int get selectedOptionIndex => this._selectedOptionIndex;

  @override
  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  void recordAnswer(bool answeredYes) {
    print("QUESTION NO: $_questionNumber");
    _isAnswered = true;
    _selectedOptionIndex =
        selectedOptionIndex; // Update the selected option index

    if (answeredYes) {
      _yesCount++;
    } else {
      _noCount++;
    }

    print("Yes count: $_yesCount, No count: $_noCount");
    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
    } else {
      Get.to(ResultScreen());

/*[GETX] WARNING, consider using: "Get.to(() => Page())" instead of "Get.to(Page())".
       Using a widget function instead of a widget fully guarantees that the widget and its controllers will be removed from memory when they are no longer used.
[GETX] GOING TO ROUTE /ResultScreen */
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
