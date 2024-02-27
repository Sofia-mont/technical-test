import 'package:flutter/material.dart';
import 'package:technical_test_sofia/presentation/widgets/home_card.dart';
import 'package:technical_test_sofia/presentation/widgets/steps_bar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(
      {required this.stepsCounter, required this.goal, super.key});

  final String stepsCounter;
  final String goal;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset('assets/img/menu_icon.png'),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/profile-pic.jpg'),
                backgroundColor: Color.fromARGB(255, 33, 50, 66),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                HomeInfoCard(
                  title: 'Steps',
                  counter: widget.stepsCounter,
                  goal: widget.stepsCounter,
                  chart: const StepsBar(),
                  cardColor: const Color.fromARGB(255, 253, 244, 175),
                  icon: 'assets/img/footprints_icon.png',
                ),
              ],
            ),
          ),
        ));
  }
}
