import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:technical_test_sofia/presentation/widgets/steps_bar.dart';

void main() {
  testWidgets('Testing steps bar widget', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: StepsBar(),
        ),
      ),
    );
    expect(find.byType(Container), findsExactly(10));
    expect(find.byType(SizedBox), findsExactly(10));
  });
}
