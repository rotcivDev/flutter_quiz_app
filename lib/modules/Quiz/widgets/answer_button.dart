import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answer, required this.handleClick});

  final String answer;
  final void Function() handleClick;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: handleClick,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: Colors.white70,
          foregroundColor: Colors.black87,
          shadowColor: Colors.black12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(answer),
    );
  }
}
