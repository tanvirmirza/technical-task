import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_practice_app/ui/utils/utils.dart';
import 'package:study_practice_app/ui/widgets/feature_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  final List<FeatureCard> featureCards = [
    const FeatureCard(
      icon: Icons.menu_book_rounded,
      iconColor: Colors.orange,
      title: "Study & Practice",
      subtitle: "Practice of all materials",
      progress: 0.3,
    ),
    const FeatureCard(
      icon: Icons.assistant_direction_outlined,
      iconColor: Colors.redAccent,
      title: "Test Yourself",
      subtitle: "Participate in all tests",
      progress: 0.1,
    ),
    const FeatureCard(
      icon: Icons.lightbulb_circle,
      iconColor: Colors.deepPurple,
      title: "Hazard Perception",
      subtitle: "Video topic exploration",
      progress: 0.45,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                          mainAxisAlignment: MainAxisAlignment.start,
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
                        dashedCircularProgressBar(_valueNotifier)
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child:
                              progressStatus(value: "10", lavel: "Completed"),
                        ),
                        Expanded(
                          flex: 2,
                          child: progressStatus(value: "05", lavel: "Passed"),
                        ),
                        Expanded(
                          child: progressStatus(value: "05", lavel: "Failed"),
                        ),
                        const SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Features",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              const SizedBox(height: 12),
              GridView.builder(
                itemCount: 3,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 180,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.8),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                itemBuilder: (context, index) {
                  return featureCards[index];
                },

                // children: [
                //   FeatureCard(
                //     icon: Icons.menu_book_rounded,
                //     iconColor: Colors.orange,
                //     title: "Study & Practice",
                //     subtitle: "Practice of all materials",
                //     progress: 0.3,
                //     onTap: () {
                //       Navigator.pushNamed(context, '/studyPractice');
                //     },
                //   ),
                //   FeatureCard(
                //     icon: Icons.assistant_direction_outlined,
                //     iconColor: Colors.redAccent,
                //     title: "Test Yourself",
                //     subtitle: "Participante in all test",
                //     progress: 0.1,
                //     onTap: () {},
                //   ),
                //   FeatureCard(
                //     icon: Icons.lightbulb_circle,
                //     iconColor: Colors.deepPurple,
                //     title: "Hazard Perception",
                //     subtitle: "Video topic exploration",
                //     progress: 0.45,
                //     onTap: () {},
                //   ),
                // ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
