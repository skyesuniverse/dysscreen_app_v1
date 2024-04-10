


import 'package:dysscreen_app_v1/models/Questions_46.dart';
import 'package:dysscreen_app_v1/models/Questions_79.dart';
import 'package:dysscreen_app_v1/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  late PageController _pageController;
  PageController get pageController => this._pageController;

  late List<dynamic> _questions;

// Initialize the controller with the selected age
  QuestionController(String selectedAge) {
    _questions = _loadQuestions(selectedAge);
  }

  // Method to load questions based on the selected age
  List<dynamic> _loadQuestions(String selectedAge) {
    if (selectedAge == "4 - 6") {
      return _loadQuestionsForAge46();
    } else {
      return _loadQuestionsForAge79();
    }
  }

  List<Question_46> _loadQuestionsForAge46() {
    // Parse the question data for age 46 into Question_46 objects
    return question_46_data.map((data) {
      return Question_46(
        id: data['id'],
        category: data['category'],
        instruction: data['instruction'],
        question: data['question'],
        options: List<String>.from(data['options']),
        answer: data['answer_index'],
      );
    }).toList();
  }

  List<Question_79> _loadQuestionsForAge79() {
    // Parse the question data for age 79 into Question_79 objects
    return question_79_data.map((data) {
      return Question_79(
        id: data['id'],
        question: data['question'],
        instruction: data['instruction'],
        options: List<String>.from(data['options']),
        answer: data['answer_index'],
      );
    }).toList();
  }

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
      // Check if the selected option index is different from the previously selected option index
      int previousOptionIndex = _selectedOptionIndices[_questionNumber.value]!;
      if (previousOptionIndex != selectedOptionIndex) {
        // Update the counts based on the selected option
        if (previousOptionIndex == 0) {
          _yesCount--;
        } else {
          _noCount--;
        }
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
    // nextQuestion();
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
    // Find the next unanswered question
    // while (nextQuestionNumber <= _questions.length &&
    //     _selectedOptionIndices.containsKey(nextQuestionNumber)) {
    //   nextQuestionNumber++;
    // }

    // Check if there are any more questions remaining
    if (nextQuestionNumber <= _questions.length) {
      // Move to the next question
      _pageController.animateToPage(nextQuestionNumber - 1,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      _questionNumber.value = nextQuestionNumber;
    }
  }

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

  // Method to check if it's the first question
  bool get isFirstQuestion => _questionNumber.value == 1;

  // Method to check if it's the last question
  bool get isLastQuestion => _questionNumber.value == _questions.length;

  bool get allQuestionsAnswered {
    // Check if the length of selectedOptionIndices is equal to the total number of questions
    return _selectedOptionIndices.length == _questions.length;
  }
}


