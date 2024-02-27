import 'package:flutter/material.dart';

class HeartState extends StatefulWidget {
  const HeartState({super.key});

  @override
  State<HeartState> createState() => _HeartStateState();
}

class _HeartStateState extends State<HeartState> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          radius: 0.6,
          stops: [0.5, 0],
          colors: [
            Color.fromARGB(255, 254, 248, 248),
            Color.fromARGB(255, 255, 206, 209),
          ],
        ),
      ),
      child: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _controller.value * 0.2 + 0.8,
              child: const Icon(
                Icons.favorite,
                size: 30.0,
                color: Color.fromARGB(255, 33, 50, 66),
              ),
            );
          },
        ),
      ),
    );
  }
}
