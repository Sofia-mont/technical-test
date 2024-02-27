import 'package:flutter/material.dart';

class WaterBar extends StatefulWidget {
  const WaterBar({required this.percent, required this.endPercent, super.key});

  final String percent;
  final String endPercent;

  @override
  State<WaterBar> createState() => _WaterBarState();
}

class _WaterBarState extends State<WaterBar> with TickerProviderStateMixin {
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
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.all(5),
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CircularProgressIndicator(
                value: double.parse(widget.percent) /
                    double.parse(widget.endPercent) *
                    _controller.value,
                strokeWidth: 15,
                strokeCap: StrokeCap.round,
                color: const Color.fromARGB(255, 33, 50, 66),
                backgroundColor: const Color.fromARGB(255, 252, 228, 229),
              );
            },
          ),
        ),
        Center(
          child: Text(
            '${removeZero('${(int.parse(widget.percent) / int.parse(widget.endPercent)) * 100}')}%',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  String removeZero(String value) {
    var response = value;
    if (value.split(".").isNotEmpty) {
      var decmialPoint = value.split(".")[1];
      if (decmialPoint == "0") {
        response = response.split(".0").join("");
      }
      if (decmialPoint == "00") {
        response = response.split(".00").join("");
      }
    }
    return response;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
