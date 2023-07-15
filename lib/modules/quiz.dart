import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions.dart';
import 'package:quiz_app/screens/start_quiz.dart';
import 'package:quiz_app/widgets/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late Widget currentPage;

  @override
  void initState() {
    currentPage = StartQuiz(
      handleStart: goToQuestions,
    );
    super.initState();
  }

  void goToQuestions() {
    setState(() {
      currentPage = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      colors: const [
        Color.fromARGB(255, 95, 6, 110),
        Colors.deepPurple,
      ],
      column: currentPage,
    );
  }
}
