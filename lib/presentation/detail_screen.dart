import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test_sofia/config/providers/user_info/user_info_provider.dart';
import 'package:technical_test_sofia/config/router/app_router.dart';
import 'package:technical_test_sofia/presentation/widgets/home_card.dart';
import 'package:technical_test_sofia/presentation/widgets/steps_bar.dart';

class DetailScreen extends ConsumerStatefulWidget {
  const DetailScreen(
      {required this.stepsCounter, required this.goal, super.key});

  final String stepsCounter;
  final String goal;

  @override
  ConsumerState<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen> {
  TextEditingController controller = TextEditingController();

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
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Actualiza tus pasos!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: 'Ingresa tus pasos',
                      hintStyle: TextStyle(
                        color: Colors.white30,
                        fontWeight: FontWeight.w300,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                IconButton(
                  onPressed: () {
                    ref.read(
                      updateStepsProvider(
                        userId: 2018,
                        steps: int.parse(controller.text),
                      ),
                    );
                    ref.read(appRouterProvider).pop();
                  },
                  icon: Icon(
                    Icons.check,
                    color: Colors.green.shade400,
                  ),
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                ),
              ],
            ),
          ),
        ));
  }
}
