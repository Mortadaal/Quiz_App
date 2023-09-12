import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion= questions[0];
    return  SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StayledText(currentQuestion.text),
         const SizedBox(height: 30),
        AnswerButton(answerText:questions,onTap: (){}),
        AnswerButton(answerText:'Answer 2',onTap: (){}),
        AnswerButton(answerText:'Answer 3',onTap: (){}),
        ],
      ),
    );
  }
}
