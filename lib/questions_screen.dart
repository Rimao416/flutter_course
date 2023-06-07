import 'package:flutter/material.dart';
import 'package:flutter002/answer_button.dart';
import 'package:flutter002/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final CurrentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            CurrentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
          ...CurrentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {});
          })
        ],
      ),
    );
  }
}
