class Questions {
  final String question, answer;
  final List<String> options;

  Questions({required this.answer, required this.question, required this.options});
}

List<Questions> questionData = [
  Questions(
    question: "1. What comes next in the sequence? \n 2, 4, 8, 16, ?",
    options: ['18', '20', '32', '24'],
    answer: '32',
  ),
  Questions(
    question: "2. Which word does NOT belong? \n Apple, Banana, Carrot, Grape",
    options: ['Apple', 'Banana', 'Carrot', 'Grape'],
    answer: 'Carrot',
  ),
  Questions(
    question: "3. Which number is the odd one out? \n 3, 5, 7, 9, 11",
    options: ['3', '7', '9', '11'],
    answer: '9',
  ),
  Questions(
    question: "4. If all Bloops are Razzies and all Razzies are Lazzies, are all Bloops definitely Lazzies?",
    options: ['Yes', 'No', 'Cannot be determined', 'Only some are'],
    answer: 'Yes',
  ),
  Questions(
    question: "5. Which number logically completes the series? \n 1, 1, 2, 3, 5, 8, ?",
    options: ['10', '11', '12', '13'],
    answer: '13',
  ),
  Questions(
    question: "6. Rearrange the letters “CIFAIPC” to form the name of a(n):",
    options: ['City', 'Ocean', 'Country', 'Continent'],
    answer: 'Country',
  ),
  Questions(
    question: "7. Find the missing number in the pattern: \n 4 16 36 ? 100",
    options: ['48', '64', '72', '81'],
    answer: '64',
  ),
  Questions(
    question: "8. If you rearrange the letters “LNGRAE,” you get the name of a:",
    options: ['Animal', 'Country', 'Fruit', 'Language'],
    answer: 'Country',
  ),
  Questions(
    question: "9. What is the next number in the sequence? \n 21, 18, 15, 12, ? ",
    options: ['10', '9', '8', '6'],
    answer: '9',
  ),
  Questions(
    question: "10. Which of the following is the least like the others? \n Book, Poem, Painting, Novel",
    options: ['Book', 'Poem', 'Painting', 'Novel'],
    answer: 'Painting',
  ),
];
