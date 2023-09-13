import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

var space = const SizedBox(
  //bruger sizedbox til at skabe afstand
  //mellem 2 widgets
  height: 30,
);

class QuizFrontPage extends StatelessWidget {
  const QuizFrontPage(this.startQuiz,{super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: Color.fromARGB(155, 255, 255, 255),
         
        ),
        //   Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 200,
        //   ),
        // ),
        space,
        const StayledText('Learn Flutter The Fun Way!'),
        space,
         OutlinedButton.icon(
          onPressed: (){startQuiz();},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt) ,
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
