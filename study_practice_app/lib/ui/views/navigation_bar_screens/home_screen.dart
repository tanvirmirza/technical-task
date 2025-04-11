import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';
import 'package:study_practice_app/ui/widgets/feature_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: colorblueAccent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text("My Progress",
                                  style: TextStyle(
                                      color: colorWhite,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 8),
                              Text(
                                "You're progressing well.\nKeep going!",
                                style: TextStyle(
                                    color: colorWhite.withOpacity(0.9),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: dashedCircularProgressBar(_valueNotifier),
                          )
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          Expanded(
                            child:
                                progressStatus(value: 10, lavel: "Completed"),
                          ),
                          Expanded(
                            flex: 2,
                            child: progressStatus(value: 05, lavel: "Passed"),
                          ),
                          Expanded(
                            child: progressStatus(value: 05, lavel: "Failed"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Features",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              const SizedBox(height: 12),
              GridView.count(
                crossAxisCount: 2,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  FeatureCard(
                    icon: Icons.menu_book_rounded,
                    iconColor: Colors.orange,
                    title: "Study & Practice",
                    subtitle: "Practice of all materials",
                    progress: 0.3,
                    onTap: () {
                      Navigator.pushNamed(context, '/studyPractice');
                    },
                  ),
                  FeatureCard(
                    icon: Icons.assistant_direction_outlined,
                    iconColor: Colors.redAccent,
                    title: "Test Yourself",
                    subtitle: "Participante in all test",
                    progress: 0.1,
                    onTap: () {},
                  ),
                  FeatureCard(
                    icon: Icons.lightbulb_circle,
                    iconColor: Colors.deepPurple,
                    title: "Hazard Perception",
                    subtitle: "Video topic exploration",
                    progress: 0.45,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
