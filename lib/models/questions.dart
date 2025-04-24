class Questions {
  final String question, answer;
  final List<String> options;

  Questions({required this.answer, required this.question, required this.options});
}

List<Questions> questionData = [
  Questions(
    question: "What comes next in the sequence? \n 2, 4, 8, 16, ?",
    options: ['18', '20', '32', '24'],
    answer: '32',
  ),
  Questions(
    question: "Which word does NOT belong? \n Apple, Banana, Carrot, Grape",
    options: ['Apple', 'Banana', 'Carrot', 'Grape'],
    answer: 'Carrot',
  ),
  Questions(
    question: "Which number is the odd one out? \n 3, 5, 7, 9, 11",
    options: ['3', '7', '9', '11'],
    answer: '9',
  ),
  Questions(
    question: "If all Bloops are Razzies and all Razzies are Lazzies, are all Bloops definitely Lazzies?",
    options: ['Yes', 'No', 'Cannot be determined', 'Only some are'],
    answer: 'Yes',
  ),
  Questions(
    question: "Which number logically completes the series? \n 1, 1, 2, 3, 5, 8, ?",
    options: ['10', '11', '12', '13'],
    answer: '13',
  ),
];
