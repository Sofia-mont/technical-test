import 'package:flutter/material.dart';

class StepsBar extends StatefulWidget {
  const StepsBar({super.key});

  @override
  State<StatefulWidget> createState() => StepsBarState();
}

class StepsBarState extends State<StepsBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 1,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
            Container(
              height: 10,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
            Container(
              height: 20,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
            Container(
              height: 30,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
            Container(
              height: 30,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
            Container(
              height: 10,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
            Container(
              height: 3,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
            Container(
              height: 8,
              width: 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 50, 66),
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(width: 5),
          ],
        ),
        const Divider(
          color: Color.fromARGB(255, 33, 50, 66),
          thickness: 2,
        ),
      ],
    );
  }
}
