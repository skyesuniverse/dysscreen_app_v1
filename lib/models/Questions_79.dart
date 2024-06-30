import 'package:flutter/material.dart';

class Question_79 {
  int id, answer;
  Map<String, dynamic> instruction, question, category;
  Map<String, List<String>> options; // Updated to support multiple languages
  Map<String, dynamic>? imagePath; // New attribute to store image path

  Question_79(
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

const List question_79_data = [
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
    "imagePath": {
      "en": "assets/images/uppercase.png",
      "ms": "assets/images/uppercase.png",
    },
    "question": {
      "en": "Does the child have difficulties to name the uppercase letters?",
      "ms": "Adakah anak anda mengalami kesukaran untuk menyebut huruf besar?",
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
      "ms": "Tunjuk pada huruf dan minta anak menyebutnya.",
    },
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
          "Adakah anak anda membaca perkataan 1 suku kata dengan perlahan, penuh kesukaran dan tidak tepat?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 8,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en":
          "Point to each syllable and ask the child to pronounce. Then ask the child to pronounce the two syllables together.",
      "ms":
          "Tunjuk pada setiap suku kata dan minta anak anda menyebutnya. Kemudian minta anak anda menyebut keseluruhan perkataan.",
    },
    "imagePath": {
      "en": "assets/images/8a.png",
      "ms": "assets/images/8b.png",
    },
    "question": {
      "en":
          "Does the child read 2 syllbles word slow, laboured and inaccurate?",
      "ms":
          "Adakah anak anda membaca perkataan 2 suku kata dengan perlahan, penuh kesukaran dan tidak tepat?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  //Letter-sound association Q9
  {
    "id": 9,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en":
          "Point to each pair of word and ask the child to read one after another.",
      "ms":
          "Tunjuk pada pasangan perkataan dan minta anak anda membaca satu demi satu.",
    },
    "imagePath": {
      "en": "assets/images/9a.png",
      "ms": "assets/images/9b.png",
    },
    "question": {
      "en":
          "Does the child have difficulties identifying words beginning with the same letter?",
      "ms":
          "Adakah anak anda mengalami kesukaran mengenal pasti perkataan yang bermula dengan huruf yang sama?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  //Segmentation Q10 -11
  {
    "id": 10,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en":
          "Cover the first sound of the word and ask the child to pronounce the sound of the remaining word.",
      "ms":
          "Tutup bunyi pertama dalam perkataan dan minta anak anda menyebut bunyi perkataan yang tinggal.",
    },
    "imagePath": {
      "en": "assets/images/10a.png",
      "ms": "assets/images/10b.png",
    },
    "question": {
      "en":
          "Does the child have difficulties pronouncing words that remain if a particular sound were removed?",
      "ms":
          "Adakah anak anda mengalami kesukaran menyebut perkataan yang kekal jika bunyi tertentu dikeluarkan?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 11,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Pronounce the word and ask the child to point to the right word.",
      "ms":
          "Sebut perkataan berikut dan minta anak anda tunjuk perkataan yang disebut.",
    },
    "imagePath": {
      "en": "assets/images/11a.png",
      "ms": "assets/images/11b.png",
    },
    "question": {
      "en":
          "Does the child have difficulties identifying words with almost similar sounds?",
      "ms":
          "Adakah anak anda sukar mengenal perkataan yang bunyinya hampir sama?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  //Auditory sequencing Q12
  {
    "id": 12,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en": "Say the word and ask the child to point to it.",
      "ms": "Sebut perkataan di bawah dan minta anak anda menunjukkannya.",
    },
    "imagePath": {
      "en": "assets/images/12a.png",
      "ms": "assets/images/12b.png",
    },
    "question": {
      "en":
          "Does the child have difficulties understanding and recalling the order of sounds and words?",
      "ms":
          "Adakah anak anda mengalami kesukaran untuk memahami dan mengingat susunan bunyi dan perkataan?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  //Rote memory Q13-16=
  {
    "id": 13,
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
    "id": 14,
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
    "id": 15,
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
  {
    "id": 16,
    "category": {
      "en": "Memory",
      "ms": "Ingatan",
    },
    "instruction": {
      "en":
          "Ask the child two or three question about multiplication between numbers, e.g. 4 x 6. ",
      "ms": "Tanya anak anda beberapa soalan operasi darab, contohnya 4 x 6.",
    },
    "question": {
      "en":
          "Does the child have to recall the multiplication table from the beginning in order answer?",
      "ms":
          "Adakah anak anda perlu mengingati jadual perkalian dari awal untuk menjawab?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },

  //Rote memory Q17
  {
    "id": 17,
    "category": {
      "en": "Memory",
      "ms": "Ingatan",
    },
    "instruction": {
      "en":
          "Narrate a short and simple story to the child then ask them questions such as:\b\n•	Name of the characters in the story\n•	The hobby of the characters\b\n•	What the characters do or other relevant questions.",
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

  //Fine motor skills Q18-19
  {
    "id": 18,
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
    "id": 19,
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

  //Visual Q20-25
  //Lining up maths columns
  {
    "id": 20,
    "category": {
      "en": "Visual",
      "ms": "Visual",
    },
    "instruction": {
      "en":
          "Ask your child to line up the digits for addition, subtraction or multiplication operation according to their place value columns.",
      "ms":
          "Minta anak anda menyusun digit untuk operasi tambah, tolak atau kali mengikut lajur nilai masing-masing.",
    },
    "imagePath": {
      "en": "assets/images/20.png",
      "ms": "assets/images/20.png",
    },
    "question": {
      "en":
          "Does the child have difficulties in lining up the digits correctly?",
      "ms":
          "Adakah anak anda menghadapi kesukaran menyusun digit mengikut lajur yang betul?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 21,
    "category": {
      "en": "Visual",
      "ms": "Visual",
    },
    "instruction": {
      "en": "Ask your child to write a short sentence on a lined page.",
      "ms": "Minta anak anda menulis ayat mudah di atas kertas yang bergaris.",
    },
    "question": {
      "en":
          "Does the writing goes above or below the line when it shouldn’t be?",
      "ms":
          "Adakah tulisan ke atas atau ke bawah garisan yang tidak sepatutnya? ",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 22,
    "category": {
      "en": "Visual",
      "ms": "Visual",
    },
    "instruction": {
      "en": "Ask your child to write a short sentence on a lined page.",
      "ms": "Minta anak anda menulis ayat mudah di atas kertas yang bergaris.",
    },
    "question": {
      "en": "Does the child write in a very low speed.",
      "ms": "Adakah anak anda menulis dengan sangat perlahan.",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 23,
    "category": {
      "en": "Visual",
      "ms": "Visual",
    },
    "instruction": {
      "en": "Ask your child to write a short sentence on a lined page.",
      "ms": "Minta anak anda menulis ayat mudah di atas kertas yang bergaris.",
    },
    "question": {
      "en": "Does the handwriting impossible or hard to read?",
      "ms": "Adakah tulisannya tidak boleh atau sukar untuk dibaca?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 24,
    "category": {
      "en": "Visual",
      "ms": "Visual",
    },
    "instruction": {
      "en":
          "Ask you child to play throw and catch an object, e.g. an eraser, with you. You throw the eraser and ask your child to catch it. Repeat several times.",
      "ms":
          "Ajak anak anda bermain baling dan tangkap objek, cth. Pemadam. Anda baling dan minta anak anda menangkapnya. Ulang beberapa kali.",
    },
    "question": {
      "en": "Does your child has difficulties catching the object?",
      "ms": "Adakah anak anda menghadapi kesukaran untuk menangkap objek?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
  {
    "id": 25,
    "category": {
      "en": "Visual",
      "ms": "Visual",
    },
    "instruction": {
      "en": "Ask your child to organize his/her belongings.",
      "ms": "Minta anak anda menyusun barang kepunyaannya.",
    },
    "question": {
      "en": "Can you child organize his/her belongings properly?",
      "ms": "Adakah anak anda menyusun barang kepunyaannya dengan sempurna?",
    },
    "options": {
      "en": ['Yes', 'No'],
      "ms": ['Ya', 'Tidak'],
    },
    "answer_index": 1,
  },
];
