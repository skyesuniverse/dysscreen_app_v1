class Question {
  int id, answer;
  String question, instruction;
  List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.instruction,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "instruction": "Let your children fasdfsdfsdfsd",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "instruction":
        "Let your children read the full word, then the word next to it.\n\n1.Cat = At \n2.Cup = Up \n3.Bus = Us",
    "options": ['Yes', 'No'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "instruction": "dfadfadfadsfasdfasd",
    "options": ['Yes', 'No'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "instruction": "ghdfghfhfgthtjtj",
    "options": ['Yes', 'No'],
    "answer_index": 2,
  },
];
