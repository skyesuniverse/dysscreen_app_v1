import 'package:get/get.dart';

class ResultController extends GetxController {
  // Map to store counts of "Yes" and "No" answers for each category
  Map<String, Map<String, int>> categoryCounts = {};

  // Method to update category counts based on selected answers
  void updateCategoryCounts(
      Map<int, int> selectedOptionIndices, List<dynamic> questions) {
    categoryCounts.clear(); // Clear existing counts

    // Iterate through questions and update counts
    questions.forEach((question) {
      final category = question.category;
      final selectedOptionIndex = selectedOptionIndices[question.id];

      if (selectedOptionIndex != null) {
        final selectedOption = question.options[selectedOptionIndex];

        // Initialize counts for the category if they don't exist
        categoryCounts.putIfAbsent(category, () => {'Yes': 0, 'No': 0});

        // Increment the count for the selected option
        categoryCounts[category]![selectedOption]!;

        // Print statements for debugging
        print('Category: $category, Selected Option: $selectedOption');
        print('Updated Category Counts: $categoryCounts');
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
}
