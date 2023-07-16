import 'package:flutter/material.dart';
import 'package:quiz_app/modules/Quiz/data/questions.dart';
import 'package:quiz_app/modules/Quiz/widgets/answer_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[0].text,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 22,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 30,
            ),
            ...questions[0].getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answer: answer,
                  handleClick: () {
                    print('clicked $answer');
                  });
            })
          ],
        ),
      ),
    );
  }
}
