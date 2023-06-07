import 'package:flutter/material.dart';
import 'package:flutter002/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Question...',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
          AnswerButton(
            answerText: 'Answer1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer2',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer3',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer4',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer5',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
