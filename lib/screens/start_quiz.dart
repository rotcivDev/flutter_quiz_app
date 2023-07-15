import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/white_text.dart';
import 'package:quiz_app/widgets/start_button.dart';

const log = print;

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key, required this.handleStart});
  final void Function() handleStart;

  @override
  Widget build(BuildContext context) {
    return Center(
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
          StartButton(
            'Start Quiz',
            onClick: handleStart,
          )
        ],
      ),
    );
  }
}
