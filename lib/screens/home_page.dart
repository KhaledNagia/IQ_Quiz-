import 'package:flutter/material.dart';
import 'package:iq_quiz/components/answer_button.dart';
import 'package:iq_quiz/models/questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score = 0;
  bool isFinished = false;
  int questionIndex = 0; //To Get Question number
  //Function called  everytime user onTap answer
  void answerQuestion(String selectedAnswer) {
    setState(() {
      if (questionData[questionIndex].answer == selectedAnswer) {
        score++;
      }
      if (questionIndex < questionData.length - 1) {
        questionIndex++;
      } else {
        isFinished = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IQ Quiz'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: isFinished
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Quiz finished"),
                      SizedBox(height: 20),
                      Text("Your Score is $score"),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              questionIndex = 0;
                              score = 0;
                              isFinished = false;
                            });
                          },
                          child: Text("Restart Quiz")),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        questionData[questionIndex].question,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      ...questionData[questionIndex].options.map((option) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: AnswerButton(
                            answerText: option,
                            onTap: () => answerQuestion(option),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
