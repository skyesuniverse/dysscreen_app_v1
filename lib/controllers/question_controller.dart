import 'package:dysscreen_app_v1/models/Questions_46.dart';
import 'package:dysscreen_app_v1/models/Questions_79.dart';
import 'package:dysscreen_app_v1/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  late PageController _pageController;
  PageController get pageController => this._pageController;
  Map<String, Map<String, int>> categoryCounts = {};

  late List<dynamic> _questions;

  // Initialize the controller with the selected age and current locale
  QuestionController(String selectedAge, String currentLocale) {
    _questions = _loadQuestions(selectedAge, currentLocale);
  }

  // Method to load questions based on the selected age
  List<dynamic> _loadQuestions(String selectedAge, String currentLocale) {
    if (selectedAge == "4 - 6") {
      return _loadQuestionsForAge46(currentLocale);
    } else {
      return _loadQuestionsForAge79(currentLocale);
    }
  }

  List<Question_46> _loadQuestionsForAge46(String currentLocale) {
    return question_46_data.map((data) {
      return Question_46(
        id: data['id'],
        category: data['category'] as Map<String, dynamic>,

        instruction: data['instruction'] as Map<String, dynamic>, // Cast to Map

        imagePath: data['imagePath'],

        question: data['question'] as Map<String, dynamic>, // Cast to Map

        options: Map<String, List<String>>.from(data['options']),
        answer: data['answer_index'],
      );
    }).toList();
  }

  List<Question_79> _loadQuestionsForAge79(String currentLocale) {
    return question_79_data.map((data) {
      return Question_79(
        id: data['id'],
        category: data['category'][currentLocale] ?? '',
        instruction: data['instruction'][currentLocale] ?? '',
        imagePath: data['imagePath'],
        question: data['question'][currentLocale] ?? '',
        options: List<String>.from(data['options'][currentLocale] ?? []),
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

  // Store previously selected option index for each question
  Map<int, int> _previousOptionIndices = {};

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

    // Check if an answer has already been recorded for this question
    if (_selectedOptionIndices.containsKey(_questionNumber.value)) {
      // Check if the selected option is different from the previously selected option
      bool isOptionChanged =
          _selectedOptionIndices[_questionNumber.value] != selectedOptionIndex;

      if (isOptionChanged) {
        // Update the counts based on the previously selected option
        int previousOptionIndex =
            _selectedOptionIndices[_questionNumber.value]!;
        if (previousOptionIndex == 0) {
          _yesCount--;
        } else {
          _noCount--;
        }
        // Update the UI only when the selected option changes
        update();
      }
    } else {
      // Call update() when an option is selected for the first time
      update();
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

//////////////////// Getter for selected option indices
  Map<int, int> get selectedOptionIndices => _selectedOptionIndices;

  List<dynamic> get questions => _questions;

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
    int totalAnswered = _yesCount + _noCount;
    print(totalAnswered);
    return totalAnswered == _questions.length;
  }

  void updateCategoryCounts(Map<int, int> selectedOptionIndices,
      List<dynamic> questions, BuildContext context) {
    // Clear existing counts
    categoryCounts.clear();

    // Iterate through questions and update counts
    questions.forEach((question) {
      final Map<String, dynamic> categoryMap = question.category;
      final String currentLocale = Localizations.localeOf(context).languageCode;
      final String category =
          categoryMap[currentLocale] ?? ''; // Adjust to access by currentLocale
      final selectedOptionIndex = selectedOptionIndices[question.id];

      // Check if the question has been answered
      if (selectedOptionIndex != null) {
        // Increment the count for the category
        categoryCounts.putIfAbsent(category, () => {'Total': 0, 'Yes': 0});
        categoryCounts[category]!['Total'] ??= 0; // Initialize with 0 if null
        categoryCounts[category]!['Total'] =
            categoryCounts[category]!['Total']! +
                1; // Increment total count for the category

        // Check if the selected option is "Yes" and update the count
        if (question.options[currentLocale]?[selectedOptionIndex] == 'Yes' ||
            question.options[currentLocale]?[selectedOptionIndex] == 'Ya') {
          categoryCounts[category]!['Yes'] ??= 0; // Initialize with 0 if null
          categoryCounts[category]!['Yes'] = categoryCounts[category]!['Yes']! +
              1; // Increment total count for the category
        }
      }
    });
  }

  // Getter to retrieve counts for a specific category
  Map<String, int>? getCategoryCounts(String category) {
    return categoryCounts[category];
  }

  // Method to calculate total count of "Yes" or "No" answers for all categories
  int getTotalCategoryCount(String option) {
    int totalCount = 0;
    categoryCounts.forEach((_, counts) {
      totalCount += counts[option]!;
    });
    return totalCount;
  }

  // Reset all relevant state variables to their initial values
  void resetState() {
    _isAnswered = false;
    _yesCount = 0;
    _noCount = 0;
    _questionNumber.value = 1;
    _selectedOptionIndices.clear();
    // You may need to reset any other state variables specific to your controller
    // Reset the PageController
    _pageController.jumpToPage(0); // Reset the page to the first question
  }
}
