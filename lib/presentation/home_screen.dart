import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:technical_test_sofia/config/providers/user_info/user_info_provider.dart';
import 'package:technical_test_sofia/config/router/app_router.dart';
import 'package:technical_test_sofia/presentation/widgets/calories_bar.dart';
import 'package:technical_test_sofia/presentation/widgets/heart_state.dart';
import 'package:technical_test_sofia/presentation/widgets/home_card.dart';
import 'package:technical_test_sofia/presentation/widgets/steps_bar.dart';
import 'package:technical_test_sofia/presentation/widgets/water_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(fetchUserInfoProvider(userId: 2018));
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
              userData.when(
                data: (data) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: 'Hi, ',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                          )),
                      TextSpan(
                          text: data.name,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          )),
                    ])),
                    const Text(
                      'Your goal is on its way to you!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () =>
                          ref.read(appRouterProvider).push('/detail', extra: {
                        'stepCounter': data.stepsCounter.toString(),
                        'goal': data.stepsGoal.toString(),
                      }),
                      child: HomeInfoCard(
                        title: 'Steps',
                        counter: data.stepsCounter.toString(),
                        goal: data.stepsGoal.toString(),
                        chart: const StepsBar(),
                        cardColor: const Color.fromARGB(255, 253, 244, 175),
                        icon: 'assets/img/footprints_icon.png',
                      ),
                    ),
                    HomeInfoCard(
                      title: 'Calories',
                      counter: data.caloriesCounter.toString(),
                      goal: data.caloriesGoal.toString(),
                      chart: CaloriesBar(
                        percent: data.caloriesCounter.toString(),
                        endPercent: data.caloriesGoal.toString(),
                      ),
                      cardColor: const Color.fromARGB(255, 185, 245, 233),
                      icon: 'assets/img/fire_icon.png',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: HomeInfoCard(
                            title: 'Water',
                            counter: data.waterCounter.toString(),
                            goal: data.waterGoal.toString(),
                            chart: WaterBar(
                                percent: data.waterCounter.toString(),
                                endPercent: data.waterGoal.toString()),
                            cardColor: const Color.fromARGB(255, 239, 178, 177),
                            icon: 'assets/img/water_icon.png',
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: HomeInfoCard(
                            title: 'Heart State',
                            counter: data.heartRate.toString(),
                            isHeartState: true,
                            goal: '0',
                            chart: const HeartState(),
                            cardColor: const Color.fromARGB(255, 239, 178, 177),
                            icon: 'assets/img/heart_icon.png',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                error: (error, stackTrace) {
                  ref.watch(fetchUserInfoProvider(userId: 2018));
                  return const Center(
                      child: CircularProgressIndicator(color: Colors.white));
                },
                loading: () => const Center(
                    child: CircularProgressIndicator(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
