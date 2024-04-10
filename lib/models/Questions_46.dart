class Question_46 {
  int id, answer;
  String question, instruction, category;
  List<String> options;

  Question_46(
      {required this.id,
      required this.category,
      required this.instruction,
      required this.question,
      required this.options,
      required this.answer});
}

const List question_46_data = [
  {
    "id": 1,
    "category": "Language",
    "instruction":
        "Parents, please answer the following question about your child's experiences or behaviors. Respond with a simple \"Yes\" or \"No\".",
    "question":
        "Does your child find it challenging to distinguish between similar-looking letters such as \"b\" and \"d\"? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "category": "Memory",
    "instruction":
        "Parents, please answer the following question about your child's experiences or behaviors. Respond with a simple \"Yes\" or \"No\".",
    "question":
        "Does your child find it challenging to distinguish between similar-looking letters such as \"b\" and \"d\"? s",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "category": "Language",
    "instruction":
        "Parents, please answer the following question about your child's experiences or behaviors. Respond with a simple \"Yes\" or \"No\".",
    "question":
        "Does your child frequently reverse the order of letters or numbers when writing or typing? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "category": "Fine motor skills",
    "instruction":
        "Parents, please answer the following question about your child's experiences or behaviors. Respond with a simple \"Yes\" or \"No\".",
    "question":
        "Does your child find it difficult to remember the sequence of steps in a set of instructions or directions? ",
    "options": ['Yes', 'No'],
    "answer_index": 1,
  },
];
