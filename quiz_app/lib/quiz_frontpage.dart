import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

var space = const SizedBox(
  //bruger sizedbox til at skabe afstand
  //mellem 2 widgets
  height: 30,
);

class QuizFrontPage extends StatelessWidget {
  const QuizFrontPage({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        space,
        const StayledText('Learn Flutter The Fun Way'),
        space,
        const OutlinedButton(onPressed: null, child: Text('Start Quiz')),
      ],
    );
  }
}
