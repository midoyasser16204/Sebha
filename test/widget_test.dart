import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sebha/main.dart';

void main() {
  testWidgets('Sebha app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const Sebha());
    await tester.pumpAndSettle();

    // Just confirm the app builds without crashing
    expect(find.byType(Sebha), findsOneWidget);
  });
}
