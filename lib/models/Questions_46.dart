import 'package:flutter/material.dart';

class Question_46 {
  int id, answer;
  Map<String, dynamic> instruction, question, category;
  Map<String, List<String>> options; // Updated to support multiple languages
  Map<String, dynamic>? imagePath; // New attribute to store image path

  Question_46(
      {required this.id,
      required this.category,
      required this.instruction,
      required this.question,
      required this.options,
      required this.answer,
      this.imagePath}); // Updated constructor to include imagePath

  String getContentByLocale(
      BuildContext context, Map<String, dynamic> content) {
    final currentLocale = Localizations.localeOf(context).languageCode;
    dynamic localeContent = content[currentLocale];
    if (localeContent != null) {
      if (localeContent is String) {
        return localeContent;
      }
    }
    return ''; // Default to empty string if content not found
  }

  List<String> getOptionsByLocale(BuildContext context) {
    final currentLocale = Localizations.localeOf(context).languageCode;
    return options[currentLocale] ?? [];
  }
}

List question_46_data = [
  {
    "id": 1,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Point to the alphabet and ask the child to read out.",
      "ms": "Tunjuk pada huruf dan minta anak anda menyebutnya.",
    },
    // "imagePath": "assets/images/uppercase.png",
    "imagePath": {
      "en": "assets/images/uppercase.png",
      "ms": "assets/images/uppercase.png",
    },
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
      "ms": "Tunjuk pada huruf dan minta anak anda menyebutnys.",
    },
    // "imagePath": "assets/images/lowercase.png",
    "imagePath": {
      "en": "assets/images/lowercase.png",
      "ms": "assets/images/lowercase.png",
    },
    "question": {
      "en": "Does the child have difficulties to name the lowercase letters?",
      "ms": "Adakah anak anda mengalami kesukaran untuk menyebut huruf kecil?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  /////////Rapid Naming Q3-5
  {
    "id": 3,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Point to the pictures and ask the child to name it.",
      "ms": "Tunjuk pada gambar dan minta anak anda menamakannya.",
    },
    // "imagePath": "assets/images/basic_object.png",
    "imagePath": {
      "en": "assets/images/basic_object.png",
      "ms": "assets/images/basic_object.png",
    },
    "question": {
      "en": "Does the child have difficulties in rapidly naming the pictures?",
      "ms":
          "Adakah anak anda mengalami kesukaran menamakan gambar dengan cepat?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 4,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Point to the sequence of digits and ask the child to name it.",
      "ms": "Tunjuk pada nombor dan minta anak anda menamakannya.",
    },
    // "imagePath": "assets/images/numbers.png",
    "imagePath": {
      "en": "assets/images/numbers.png",
      "ms": "assets/images/numbers.png",
    },
    "question": {
      "en": "Does the child have difficulties in rapidly naming the digits?",
      "ms":
          "Adakah anak anda mengalami kesukaran menamakan nombor dengan cepat?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 5,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Point to the colours and ask the child to name it.",
      "ms": "Tunjuk pada warna dan minta anak anda menamakannya.",
    },
    // "imagePath": "assets/images/colors.png",
    "imagePath": {
      "en": "assets/images/colors.png",
      "ms": "assets/images/colors.png",
    },
    "question": {
      "en": "Does the child have difficulties in rapidly naming the colours?",
      "ms":
          "Adakah anak anda mengalami kesukaran menamakan warna dengan cepat?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  /////////Directionality Q6
  {
    "id": 6,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Point to the alphabet and ask your child to read out.",
      "ms": "Tunjuk pada huruf dan minta anak anda menyebutnya.",
    },
    // "imagePath": "assets/images/miror_words.png",
    "imagePath": {
      "en": "assets/images/miror_words.png",
      "ms": "assets/images/miror_words.png",
    },
    "question": {
      "en": "Does the child have confusion between the look-alike letters?",
      "ms": "Adakah anak anda keliru dengan huruf yang hampir serupa?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  /////////Reading Q7-8
  {
    "id": 7,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Point to each word and ask the child to read.",
      "ms": "Tunjuk pada setiap perkataan dan minta anak anda membacanya.",
    },
    "imagePath": {
      "en": "assets/images/7a.png",
      "ms": "assets/images/7b.png",
    },
    "question": {
      "en": "Does the child read 1 syllable slow, laboured and inaccurate? ",
      "ms":
          "Adakah anak anda membaca perkataan 1 sukukata dengan perlahan, penuh kesukaran dan tidak tepat?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  //Rote memory Q12-14 in word
  {
    "id": 8,
    "category": {
      "en": "Memory",
      "ms": "Ingatan",
    },
    "instruction": {
      "en":
          "Without showing the alphabets, ask the child to read the alphabet A to Z in order.",
      "ms":
          "Tanpa menunjukkan huruf, minta anak anda membaca huruf A hingga Z mengikut urutan.",
    },
    "question": {
      "en": "Does the child have difficulties in sequencing the alphabets?",
      "ms": "Adakah anak anda mengalami kesukaran dalam urutan huruf?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 9,
    "category": {
      "en": "Memory",
      "ms": "Ingatan",
    },
    "instruction": {
      "en":
          "Without showing the numbers, ask the child to read the numbers in order.",
      "ms":
          "Tanpa menunjukkan nombor, minta anak anda membaca nombor mengikut urutan.",
    },
    "question": {
      "en": "Does the child have difficulties in sequencing the numbers?",
      "ms": "Adakah anak anda mengalami kesukaran dalam urutan nombor?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 10,
    "category": {
      "en": "Memory",
      "ms": "Ingatan",
    },
    "instruction": {
      "en":
          "Ask the child to recite the days of the week and the month of the year in order.",
      "ms":
          "Minta anak anda manyatakan hari dalam seminggu dan bulan dalam setahun mengikut urutan.",
    },
    "question": {
      "en":
          "Does the child have difficulties in sequencing the days and months?",
      "ms": "Adakah anak anda mengalami kesukaran dalam urutan hari dan bulan?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  //Short term verbal memory Q16 in word
  {
    "id": 11,
    "category": {
      "en": "Memory",
      "ms": "Ingatan",
    },
    "instruction": {
      "en":
          "Narrate a short and simple story to the child then ask them questions such as:\b\n•	Name of the characters in the story\n•	The hobby of the characters\n\b•	What the characters do or other relevant questions.",
      "ms":
          "Ceritakan satu cerita pendek dan mudah kepada anak anda, kemudian tanyakan soalan seperti:\n•	Nama watak dalam cerita\n•	Hobi watak-watak\n•	Perkara yang dilakukan oleh watak atau soalan lain yang berkaitan.",
    },
    "question": {
      "en":
          "Does the child have difficulties recalling the story that was just told?",
      "ms":
          "Adakah anak anda mengalami kesukaran untuk mengingati cerita yang baru sahaja diceritakan?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  //Fine motor skills  Q17-18 in word
  {
    "id": 12,
    "category": {
      "en": "Fine motor skills",
      "ms": "Kemahiran motor halus",
    },
    "instruction": {
      "en": "Ask the child to grip a pencil.",
      "ms": "Minta anak anda menggenggam pensel.",
    },
    "question": {
      "en": "Does the child have stable pencil grip?",
      "ms": "Adakah anak anda mempunyai genggaman pensel yang stabil?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 13,
    "category": {
      "en": "Fine motor skills",
      "ms": "Kemahiran motor halus",
    },
    "instruction": {
      "en": "Ask the child to write letters.",
      "ms": "Minta anak anda menulis huruf.",
    },
    "question": {
      "en": "Does the writing clear and neat?",
      "ms": "Adakah tulisannya jelas dan kemas?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
];
