import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.label, {super.key});
  final String label;
  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
    );
  }
}
