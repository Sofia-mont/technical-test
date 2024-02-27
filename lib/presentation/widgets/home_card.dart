import 'package:flutter/material.dart';
import 'package:technical_test_sofia/config/utils/formatter.dart';

class HomeInfoCard extends StatefulWidget {
  const HomeInfoCard(
      {required this.title,
      required this.counter,
      required this.goal,
      required this.chart,
      required this.icon,
      required this.cardColor,
      this.isHeartState = false,
      super.key});

  final Color cardColor;
  final String title;
  final String counter;
  final String goal;
  final Widget chart;
  final bool isHeartState;
  final String icon;

  @override
  State<HomeInfoCard> createState() => _HomeInfoCardState();
}

class _HomeInfoCardState extends State<HomeInfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      margin: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          color: widget.cardColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 33, 50, 66),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Image.asset(widget.icon),
                ),
              ),
              const SizedBox(width: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${widget.title}\n',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 33, 50, 66)),
                    ),
                    TextSpan(
                      text: widget.isHeartState
                          ? '${widget.counter} bpm'
                          : numberFormat(widget.counter),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 33, 50, 66),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    if (!widget.isHeartState)
                      TextSpan(
                        text: widget.isHeartState
                            ? '${widget.goal} bpm'
                            : ' / ${numberFormat(widget.goal)}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 33, 50, 66),
                            fontSize: 32,
                            fontWeight: FontWeight.w300),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          widget.chart,
        ],
      ),
    );
  }
}
