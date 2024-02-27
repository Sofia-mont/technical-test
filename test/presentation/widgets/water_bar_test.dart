import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:technical_test_sofia/presentation/widgets/water_bar.dart';

void main() {
  testWidgets('Testing water bar widget', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: WaterBar(
            percent: '1000',
            endPercent: '10000',
          ),
        ),
      ),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.byType(Text), findsOneWidget);
  });
}
