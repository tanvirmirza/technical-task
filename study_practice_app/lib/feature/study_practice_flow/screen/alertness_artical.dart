import 'package:flutter/material.dart';
import 'package:study_practice_app/core/utility/app_colors.dart';
import 'package:study_practice_app/feature/study_practice_flow/widgets/custom_tb_appbar.dart';


class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Alertness Article',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Stay focused, avoid distractions, rest well, follow traffic rules, scan surroundings, anticipate hazards, and stay sober for safe driving.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.1)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Icon(
                  Icons.image,
                  color: Theme.of(context).colorScheme.primary,
                  size: 70,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Alertness  |  January 22, 2025',
              style: TextStyle(fontSize: 12, color: AppColors.colorGrey),
            ),
            const SizedBox(height: 16),
            const Text(
              'Driving Alertness: Stay Focused & Safe',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Driving alertness is crucial for ensuring road safety, as it directly impacts a driver's ability to react quickly and make sound decisions. A fully alert driver is more capable of recognizing hazards, obeying traffic signals, and responding to unexpected situations.",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 12),
            const Text(
              "Several factors influence driving alertness, including rest, hydration, and mental focus. Fatigue is a major contributor to reduced alertness, which is why getting adequate sleep before long drives is essential.",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 12),
            const Text(
              "To maintain optimal alertness, drivers should take proactive measures such as scheduling breaks on long trips, stretching, or engaging in light physical activity during stops. If signs of drowsiness, such as frequent yawning or difficulty keeping eyes open, appear, it’s best to pull over and rest rather than risking an accident.",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
