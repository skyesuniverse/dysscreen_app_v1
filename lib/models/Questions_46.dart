class Question_46 {
  int id, answer;
  String question, instruction, category;
  List<String> options;
  String? imagePath; // New attribute to store image path

  Question_46(
      {required this.id,
      required this.category,
      required this.instruction,
      required this.question,
      required this.options,
      required this.answer,
      this.imagePath}); // Updated constructor to include imagePath
}

const List question_46_data = [
  {
    "id": 1,
    "category": "Language",
    "instruction": "Point to the alphabet and ask the child to read out.",
    "imagePath": "assets/images/uppercase.png",
    "question":
        "Does the child have difficulties to name the uppercase letters? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "category": "Language",
    "instruction": "Point to the alphabet and ask the child to read out.",
    "imagePath": "assets/images/lowercase.png",
    "question":
        "Does the child have difficulties to name the lowercase letters? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "category": "Language",
    "instruction": "Point to the pictures and ask the child to name it.",
    "imagePath": "assets/images/basic_object.png",
    "question":
        "Does the child have difficulties in rapidly naming the pictures? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "category": "Language",
    "instruction":
        "Point to the sequence of digits and ask the child to name it.",
    "imagePath": "assets/images/numbers.png",
    "question":
        "Does the child have difficulties in rapidly naming the digits? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "category": "Language",
    "instruction": "Point to the colours and ask the child to name it.",
    "imagePath": "assets/images/colors.png",
    "question":
        "Does the child have difficulties in rapidly naming the colours? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "category": "Language",
    "instruction": "Point to the alphabet and ask your child to read out.",
    "imagePath": "assets/images/miror_words.png",
    "question":
        "Does the child have confusion between the look-alike letters? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "category": "Language",
    "instruction":
        "Point to each word and ask the child to read:\n•	Cat\n•	Cup \n•	Pen\n•	Book\n•	Duck\n•	Pot",
    "question":
        "Does the child read 1 syllable slow, laboured and inaccurate? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "category": "Language",
    "instruction":
        "Point to each syllable and ask the child to pronounce. Then ask the child to pronounce the two syllables together:\n•	in to = into\n•	ba by = baby\n•	can dy = candy\n•	pen cil = pencil\n•	a pple = apple",
    "question":
        "Does the child read 2 syllbles word slow, laboured and inaccurate? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "category": "Language",
    "instruction":
        "Point to each pair of word and ask the child to read one after another:\n•	but - big\n•	dad - do\n•	me - mum\n•	not - now\n•	put - pen\n•	up - uncle",
    "question":
        "Does the child have difficulties identifying words beginning with the same letter? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "category": "Language",
    "instruction":
        "Cover the first sound of the word and ask the child to pronounce the sound of the remaining word. \n•	cat (cover c)\n•	cup (cover c)\n•	pen (cover p)\n•	book (cover b)\n•	duck (cover d)\n•	pot (cover p)",
    "question":
        "Does the child have difficulties pronouncing words that remain if a particular sound were removed?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 11,
    "category": "Language",
    "instruction":
        "Pronounce the word and ask the child to point to the right word:\n•	book\n•	hook\n•	cook\n•	cab\n•	cap\n•	cat",
    "question":
        "Does the child have difficulties identifying words with almost similar sounds?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 12,
    "category": "Language",
    "instruction":
        "Say the word and ask the child to point to it:\n•	elbow\n•	bellow\n•	298\n•	829",
    "question":
        "Does the child have difficulties understanding and recalling the order of sounds and words?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  ////////////category: Memory
  {
    "id": 13,
    "category": "Memory",
    "instruction":
        "Without showing the alphabets, ask the child to read the alphabet A to Z in order.",
    "question": "Does the child have difficulties in sequencing the alphabets?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 14,
    "category": "Memory",
    "instruction":
        "Without showing the numbers, ask the child to read the numbers in order.",
    "question": "Does the child have difficulties in sequencing the numbers?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 15,
    "category": "Memory",
    "instruction":
        "Ask the child to recite the days of the week and the month of the year in order.",
    "question":
        "Does the child have difficulties in sequencing the days and months?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 16,
    "category": "Memory",
    "instruction":
        "Ask the child two or three question about multiplication between numbers, e.g. 4 x 6. ",
    "question":
        "Does the child have to recall the multiplication table from the beginning in order answer?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 17,
    "category": "Memory",
    "instruction":
        "Narrate a short and simple story to the child then ask them questions such as:\n•	Name of the characters in the story\n•	The hobby of the characters\n•	What the characters do or other relevant questions.",
    "question":
        "Does the child have difficulties recalling the story that was just told?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },

  //////category: fine motor skill

  {
    "id": 18,
    "category": "Fine motor skills",
    "instruction": "Ask the child to grip a pencil.",
    "question": "Does the child have stable pencil grip?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 19,
    "category": "Fine motor skills",
    "instruction": "Ask the child to write letters.",
    "question": "Does the writing clear and neat?",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
];
