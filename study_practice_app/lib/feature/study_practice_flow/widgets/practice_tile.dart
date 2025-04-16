import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_practice_app/feature/profile/controller/profile_controller.dart';

class PracticeTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String status;
  final Color color;

  PracticeTile({
    super.key,
    required this.title,
    required this.icon,
    required this.status,
    required this.color,
  });

  final ProfileController studyPractice = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.grey.withOpacity(0.3),
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.withOpacity(0.1)),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(title),
        subtitle: Text(status),
        trailing: Obx(
          () => Radio<String>(
            value: title,
            groupValue: studyPractice.selectedTopic.value,
            onChanged: (value) {
              studyPractice.selectTopic(value);
            },
          ),
        ),
      ),
    );
  }
}
