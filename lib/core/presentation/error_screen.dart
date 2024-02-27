import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({required this.message, super.key});
  final String message;
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Text('ERROR SCREEN'),
    );
  }
}
