import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.label, {super.key, required this.onClick});
  final String label;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onClick,
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(label),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black87,
      ),
    );
  }
}
