import 'package:flutter/material.dart';
import 'package:quiz_app/modules/quiz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Ensure Quiz renders and start correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Quiz(),
    ));

    expect(find.text('Start Quiz'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.arrow_right_alt));
    await tester.pump();

    expect(find.text('Start Quiz'), findsNothing);
    expect(find.text('Questions page'), findsOneWidget);
  });
}
