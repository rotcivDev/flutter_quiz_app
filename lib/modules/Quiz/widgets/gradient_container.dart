import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colors,
    required this.column,
  });
  final List<Color> colors;
  final Widget column;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: AlignmentDirectional.bottomStart,
          end: AlignmentDirectional.topEnd,
        ),
      ),
      child: column,
    );
  }
}
