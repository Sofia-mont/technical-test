import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:technical_test_sofia/presentation/widgets/home_card.dart';

void main() {
  testWidgets('Testing home card widget', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: HomeInfoCard(
            title: 'Prueba',
            counter: '100',
            goal: '100',
            chart: Text('Chart'),
            cardColor: Colors.black,
          ),
        ),
      ),
    );
    expect(find.byType(CircleAvatar), findsOneWidget);
    expect(find.text('Chart'), findsOne);
  });
}
