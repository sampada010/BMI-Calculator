import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(BMICalculator());

    // Verify that the InputPage widget appears.
    expect(find.byType(InputPage), findsOneWidget);

    // Verify that the counter starts at 0.
    expect(find.text('Counter: 0'), findsOneWidget);
    expect(find.text('Counter: 1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter has incremented.
    expect(find.text('Counter: 0'), findsNothing);
    expect(find.text('Counter: 1'), findsOneWidget);

    // Tap the '+' icon again and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter has incremented again.
    expect(find.text('Counter: 1'), findsNothing);
    expect(find.text('Counter: 2'), findsOneWidget);
  });
}
