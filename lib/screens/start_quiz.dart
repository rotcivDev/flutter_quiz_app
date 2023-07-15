import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/white_text.dart';
import 'package:quiz_app/widgets/start_button.dart';
import 'package:quiz_app/widgets/gradient_container.dart';

const log = print;

class StartQuiz extends StatefulWidget {
  const StartQuiz({super.key});

  @override
  State<StartQuiz> createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  void startQuiz() {
    log('Quiz started');
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      colors: const [
        Color.fromARGB(255, 95, 6, 110),
        Colors.deepPurple,
      ],
      column: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz_logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 80,
            ),
            const WhiteText(
              'Learn Flutter the fun way!',
              fontSize: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            const StartButton('Start Quiz')
          ],
        ),
      ),
    );
  }
}
