import 'package:flutter/material.dart';
import 'package:quiz_app/modules/Quiz/widgets/white_text.dart';
import 'package:quiz_app/modules/Quiz/widgets/start_button.dart';

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
            color: const Color.fromARGB(181, 17, 156, 206),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 30, color: Colors.black87),
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
