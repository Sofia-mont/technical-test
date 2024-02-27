import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:technical_test_sofia/presentation/detail_screen.dart';
import 'package:technical_test_sofia/presentation/widgets/home_card.dart';

void main() {
  testWidgets('Testing detail screen', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: DetailScreen(
          stepsCounter: '100',
          goal: '100',
        ),
      ),
    );
    expect(find.byType(HomeInfoCard), findsOneWidget);
  });
}
