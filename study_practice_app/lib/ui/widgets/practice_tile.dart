import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_practice_app/provider/provider.dart';
import 'package:study_practice_app/ui/utils/utils.dart';

class PracticeTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String status;
  final Color color;

  const PracticeTile({
    super.key,
    required this.title,
    required this.icon,
    required this.status,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StudyPracticeProvider>(context);
    return Card(
      elevation: 0.5,
      surfaceTintColor: colorWhite,
      shadowColor: colorGrey.withOpacity(0.3),
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colorGrey.withOpacity(0.1),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(title),
        subtitle: Text(status),
        trailing: Radio<String>(
          value: title,
          groupValue: provider.selectedTopic,
          onChanged: (value) {
            provider.selectTopic(value);
          },
        ),
      ),
    );
  }
}
