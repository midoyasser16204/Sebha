import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sebha/views/main_view.dart';

void main() {
  testWidgets('Tasbih counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: MainView(),
      ),
    );

    expect(find.text('0/33'), findsOneWidget);
    expect(find.text('1/33'), findsNothing);

    await tester.tap(find.byType(GestureDetector).first);
    await tester.pump();

    expect(find.text('0/33'), findsNothing);
    expect(find.text('1/33'), findsOneWidget);
  });
}
