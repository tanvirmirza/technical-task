import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_practice_app/core/route/app_route.dart';
import 'package:study_practice_app/core/utility/app_colors.dart';
import 'package:study_practice_app/feature/study_practice_flow/widgets/custom_tb_appbar.dart';
import 'package:study_practice_app/feature/study_practice_flow/widgets/sudy_practice_card.dart';

class StudyPracticeScreen extends StatelessWidget {
  const StudyPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Study & Practice"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "In study & practice section, you can:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• ", style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Text(
                    "Explore the study materials and expand your knowledge.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• ", style: TextStyle(fontSize: 18)),
                Expanded(
                  child: Text(
                    "Assess your knowledge by tackling some practice questions.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoute.study),
              child: studyPracticeCard(
                icon: Icons.menu_book_rounded,
                iconColor: AppColors.colorblueAccent,
                title: 'Study',
                subtitle: '12 completed 02 remining',
              ),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoute.practice),
              child: studyPracticeCard(
                icon: Icons.auto_stories_rounded,
                iconColor: Colors.amber,
                title: 'Practice',
                subtitle: '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
