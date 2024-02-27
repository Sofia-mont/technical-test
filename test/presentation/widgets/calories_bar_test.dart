import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:technical_test_sofia/presentation/widgets/calories_bar.dart';

void main() {
  testWidgets('Testing calories bar widget', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CaloriesBar(
            percent: '10',
            endPercent: '1000',
          ),
        ),
      ),
    );
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });
}
