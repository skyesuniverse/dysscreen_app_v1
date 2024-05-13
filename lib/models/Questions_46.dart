import 'package:flutter/material.dart';

class Question_46 {
  int id, answer;
  Map<String, dynamic> instruction, question, category;
  Map<String, List<String>> options; // Updated to support multiple languages
  String? imagePath; // New attribute to store image path

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
      "ms": "Tunjuk pada abjad dan minta anak membacanya.",
    },
    "imagePath": "assets/images/uppercase.png",
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
    "imagePath": "assets/images/basic_object.png",
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
    "imagePath": "assets/images/numbers.png",
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
    "imagePath": "assets/images/colors.png",
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
    "imagePath": "assets/images/miror_words.png",
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
      "en":
          "Point to each word and ask the child to read:\n•	Cat\n•	Cup\n•	Pen\n•	Book\n•	Duck\n•	Pot",
      "ms":
          "Tunjuk pada setiap perkataan dan minta anak anda membacanya:\n•	Bas\n•	Beg\n•	Cat\n•	Mak\n•	Nak\n•Kak",
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
  {
    "id": 8,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en":
          "Point to each syllable and ask the child to pronounce. Then ask the child to pronounce the two syllables together:\n•	in to = into\n•	ba by = baby\n•	can dy = candy\n•	pen cil = pencil\n•	a pple = apple",
      "ms":
          "Tunjuk pada setiap sukukata dan minta anak anda menyebutnya. Kemudian minta anak anda menyebut keseluruhan perkataan.\n•	sa ya = saya\n•	i bu = ibu\n•	bu ku = buku\n•	a dik = adik\n•	i tik = itik\n•	ja ri = jari",
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

  //Letter-sound association Q9
  {
    "id": 9,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en":
          "Point to each pair of word and ask the child to read one after another:\n•	but - big \n•	dad - do\n•	me - mum\n•	not - now\n•	put - pen\n•	up - uncle",
      "ms":
          "Tunjuk pada pasangan perkataan dan minta anak anda membaca satu demi satu:\n•	buku – bola\n•	dadu – dada\n•	paku – papa\n•	mama – mana\n•	awan - ayam",
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

  //Segmentation Q10 -11
  {
    "id": 10,
    "category": {
      "en": "Language",
      "ms": "Bahasa",
    },
    "instruction": {
      "en":
          "Cover the first sound of the word and ask the child to pronounce the sound of the remaining word.\n•	cat (cover c)\n•	cup (cover c)\n•	book (cover b)\n•	duck (cover d)\n•	pot (cover p)",
      "ms":
          "Tutup bunyi pertama dalam perkataan dan minta anak anda menyebut bunyi perkataan yang tinggal.\n•	beg (tutup b)\n•	padu (tutup pa)\n•	mak (tutup m)\n•	awan (tutup a)",
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
      "en":
          "Pronounce the word and ask the child to point to the right word:\n•	book\n•	hook\n•	cook\n•	cab\n•	cap\n•	cat",
      "ms":
          "Sebut perkataan berikut dan minta anak anda tunjuk perkataan yang disebut:\n•	baju \n•	laju\n•	kopi\n•	topi\n•	cawan\n•	lawan",
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
      "en":
          "Say the word and ask the child to point to it:\n•	elbow\n•	bellow\n•	298\n•	829",
      "ms": "Sebut perkataan di bawah dan minta anak anda menunjukkannya:\n•",
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

  //Rote memory Q13-16
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
      "ms": "AdakAdakah anak anda mengalami kesukaran dalam urutan nombor?",
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
];
