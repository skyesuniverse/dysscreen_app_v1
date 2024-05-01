

class Question_79 {
  int id, answer;
  String question, instruction, category;
  List<String> options;
  String? imagePath; // New attribute to store image path

  Question_79(
      {required this.id,
      required this.category,
      required this.instruction,
      required this.question,
      required this.options,
      required this.answer,
      this.imagePath}); // Updated constructor to include imagePath
}

const List question_79_data = [
  {
    "id": 1,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Point to the alphabet and ask the child to read out.",
      "ms": "Tunjuk pada abjad dan minta anak membacanya.",
    },
    "imagePath": "assets/images/lowercase.png",
    "question": {
      "en": "Does the child have difficulties to name the uppercase letters?",
      "ms": "Adakah anak mengalami kesukaran untuk menyebut huruf besar?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 2,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Point to the alphabet and ask the child to read out.",
      "ms": "Tunjuk pada abjad dan minta anak membacanya.",
    },
    "imagePath": "assets/images/lowercase.png",
    "question": {
      "en": "Does the child have difficulties to name the lowercase letters?",
      "ms": "Adakah anak mengalami kesukaran untuk menyebut huruf kecil?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
];
