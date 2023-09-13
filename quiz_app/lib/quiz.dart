import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_frontpage.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers=[];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {

   Widget screenWidget= QuizFrontPage(switchScreen);
    if(activeScreen=='question-screen'){
      screenWidget= QuestionScreen(onSlectAnser: chooseAnswer,);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 150, 244, 154),
                Color.fromARGB(255, 150, 208, 244),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
              child: screenWidget),
        ),
      ),
    );
  }
}
