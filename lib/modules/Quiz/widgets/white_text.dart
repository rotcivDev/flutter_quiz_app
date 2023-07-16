import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  const WhiteText(this.text, {super.key, required this.fontSize});

  final double fontSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      ),
    );
  }
}
