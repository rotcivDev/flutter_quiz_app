import 'package:flutter/material.dart';
import 'package:quiz_app/modules/Quiz/screens/questions.dart';
import 'package:quiz_app/modules/Quiz/screens/start_quiz.dart';
import 'package:quiz_app/modules/Quiz/widgets/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

const String startQuiz = 'start-quiz';
const String questions = 'questions';

class _QuizState extends State<Quiz> {
  String currentPage = startQuiz;

  void goToQuestions() {
    setState(() {
      currentPage = questions;
    });
  }

  Widget selectScreenWidget(String slug) {
    switch (slug) {
      case questions:
        return const Questions();
      default:
        return StartQuiz(
          handleStart: goToQuestions,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      colors: const [
        Color.fromARGB(255, 95, 6, 110),
        Colors.deepPurple,
      ],
      column: selectScreenWidget(currentPage),
    );
  }
}
