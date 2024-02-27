import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:technical_test_sofia/presentation/widgets/heart_state.dart';

void main() {
  testWidgets('Testing heart state widget', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: HeartState(),
        ),
      ),
    );
    expect(find.byType(Icon), findsOneWidget);
  });
}
