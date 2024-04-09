import 'package:dysscreen_app_v1/models/Questions_46.dart';
import 'package:dysscreen_app_v1/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question_46> _questions = question_46_data
      .map(
        (question) => Question_46(
            id: question['id'],
            category: question['category'],
            instruction: question['instruction'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();
  List<Question_46> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _yesCount = 0;
  int get yesCount => this._yesCount;

  int _noCount = 0;
  int get noCount => this._noCount;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  // Store selected option index for each question
  Map<int, int> _selectedOptionIndices = {};

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

  void recordAnswer(int selectedOptionIndex, bool answeredYes) {
    print("QUESTION NO: $_questionNumber");
    _isAnswered = true;

    // Check if an answer has already been recorded for this question
    if (_selectedOptionIndices.containsKey(_questionNumber.value)) {
      // Remove the previously selected option's count
      int previousOptionIndex = _selectedOptionIndices[_questionNumber.value]!;
      if (previousOptionIndex == 0) {
        _yesCount--;
      } else {
        _noCount--;
      }
    }

    // Update the selected option index for the current question
    _selectedOptionIndices[_questionNumber.value] = selectedOptionIndex;

    // Update the counts based on the selected option
    if (answeredYes) {
      _yesCount++;
    } else {
      _noCount++;
    }

    print("Yes count: $_yesCount, No count: $_noCount");

    // Instead of directly calling nextQuestion(), just remove this line

    // Notify GetX to update the UI when counts change
    update(); // This will re-render the UI with updated counts
    nextQuestion();
  }

  void previousQuestion() {
    if (_questionNumber.value > 1) {
      _pageController.previousPage(
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      _questionNumber.value--;
    }
  }

  void nextQuestion() {
    int nextQuestionNumber = _questionNumber.value + 1;
    while (nextQuestionNumber <= _questions.length &&
        _selectedOptionIndices.containsKey(nextQuestionNumber)) {
      nextQuestionNumber++;
    }

    if (nextQuestionNumber <= _questions.length) {
      _pageController.animateToPage(nextQuestionNumber - 1,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      _questionNumber.value = nextQuestionNumber;
    } else {
      Get.to(ResultScreen());
    }
  }

  //  Rxn<Question> currentQuestion = Rxn<Question>();
  // final questionIndex = 0.obs; //_curruntQuestionIndex

  // bool get isFirstQuestion => questionIndex.value > 0;

  // bool get islastQuestion => questionIndex.value >= allQuestions.length - 1;

  // void nextQuestion() {
  //   if (questionIndex.value >= allQuestions.length - 1) return;
  //   questionIndex.value++;
  //   currentQuestion.value = allQuestions[questionIndex.value];
  // }

  // void prevQuestion() {
  //   if (questionIndex.value <= 0) {
  //     return;
  //   }
  //   questionIndex.value--;
  //   currentQuestion.value = allQuestions[questionIndex.value];
  // }

  /*[GETX] WARNING, consider using: "Get.to(() => Page())" instead of "Get.to(Page())".
       Using a widget function instead of a widget fully guarantees that the widget and its controllers will be removed from memory when they are no longer used.
[GETX] GOING TO ROUTE /ResultScreen */

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  // Getter to retrieve selected option index for a given question
  int? getSelectedOptionIndex(int questionNumber) {
    return _selectedOptionIndices[questionNumber];
  }

  // Method to clear selected option for a given question
  void clearSelectedOption(int questionNumber) {
    _selectedOptionIndices.remove(questionNumber);
  }
}
