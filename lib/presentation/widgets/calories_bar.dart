import 'package:flutter/material.dart';

class CaloriesBar extends StatefulWidget {
  const CaloriesBar(
      {required this.endPercent, required this.percent, super.key});
  final String percent;
  final String endPercent;

  @override
  State<CaloriesBar> createState() => _CaloriesBarState();
}

class _CaloriesBarState extends State<CaloriesBar>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3500),
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 2,
          height: 30,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 33, 50, 66)),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return LinearProgressIndicator(
                minHeight: 20,
                value: double.parse(widget.percent) /
                    double.parse(widget.endPercent) *
                    _controller.value,
                color: const Color.fromARGB(255, 33, 50, 66),
                backgroundColor: const Color.fromARGB(255, 240, 255, 252),
                borderRadius: BorderRadius.circular(10),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
